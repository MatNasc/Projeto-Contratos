<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TelaBuscaImovel.aspx.cs" Inherits="Projeto_Contratos.TelaBusca.TelaBuscaImovel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="stylesheet" href="Estilo_CAD.css" />

    <div class="container-principal">
        <div id="main">
            <h1 class="box-title" style="font-family: 'Times New Roman'; font-size: 70px">Busca de Imóveis</h1>
            <div class="content-box" style="margin-right: 150px; margin-left: 150px; padding-bottom: 150px; margin-top: 50px">
                <div class="row">
                    <asp:Label runat="server" Text="Cidade" Style="color: white; height: 40px; padding: 20px 20px; display: inline-block; margin-top: 50px; margin-left:23%; font-size: 25px"></asp:Label>
                    <asp:DropDownList runat="server" ID="droplistCidade" AutoPostBack="true">
                        <asp:ListItem Text="Itajubá" />
                        <asp:ListItem Text="Belo Horizonte" />
                        <asp:ListItem Text="Juiz de Fora" />
                        <asp:ListItem Text="Tiradentes" />
                    </asp:DropDownList>
                    <asp:Label runat="server" Text="Bairro" Style="color: white; height: 40px; padding: 20px 20px; display: inline-block; margin-top: 50px; font-size: 25px"></asp:Label>
                    <asp:DropDownList runat="server" ID="droplistBairro" AutoPostBack="true">
                        <asp:ListItem Text="Rebourgeon" Value="Rebourgeon" />
                        <asp:ListItem Text="Piedade" Value="Piedade" />
                        <asp:ListItem Text="Boa Vista" Value="BoaVista" />
                        <asp:ListItem Text="Bahamas" Value="Bahamas" />
                    </asp:DropDownList>
                    <asp:Button runat="server" ID="btnbuscaIM" OnClick="btnbuscaIM_Click" Text="Buscar" class="button" Style="margin-left: 20px; height: 65px" />
                    <br />
                    <br />
                    <asp:GridView runat="server" ID="grdImovel" OnRowCommand="grdImovel_RowCommand" AutoGenerateColumns="false" Width="100%" AllowPaging="true" PageSize="20" CssClass="table" Style="background-color: black; color: white; width: 60%; margin-left: 225px; border: thin">
                        <Columns>
                            <asp:BoundField DataField="locador" HeaderText="LOCADOR" />
                            <asp:BoundField DataField="rua" HeaderText="RUA" />
                            <asp:BoundField DataField="numero" HeaderText="NÚMERO" />
                            <asp:BoundField DataField="bairro" HeaderText="BAIRRO" />
                            <asp:BoundField DataField="cidade" HeaderText="CIDADE" />
                            <asp:BoundField DataField="n_agua" HeaderText="N°CONTA DE ÁGUA" />
                            <asp:BoundField DataField="n_luz" HeaderText="N° CONTA DE LUZ" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
