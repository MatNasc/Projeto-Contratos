<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TelaBuscaContrato.aspx.cs" Inherits="Projeto_Contratos.TelaBusca.TelaBuscaContrato" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="Estilo_CAD.css" />

    <div class="container-principal">
        <div id="main">
            <h1 class="box-title" style="font-family:'Times New Roman'; font-size:70px">Busca de Contratos</h1>
            <div class="content-box" style="margin-right: 150px; margin-left: 150px; padding-bottom: 150px; margin-top:50px">         
                <asp:TextBox runat="server" ID="Consultar" placeholder="Digite o nome de um cliente" style="border-radius:10px; border:1px solid #ccc;width:25%; height:40px; padding:20px 20px; display:inline-block; margin-top:50px; margin-left:36%; font-size:16px"></asp:TextBox>
                <asp:Button runat="server" ID="BtnPesquisar" OnClick="BtnPesquisar_Click" Text="Buscar" class="button" Style="margin-left: 20px; height: 65px;" />
                <br />
                <br />
                <asp:GridView CssClass="table" runat="server" style="background-color:black; color:white; width:60%; margin-left:250px; border:thin;" ID="grd_Contratos" Width="100%" OnRowCommand="grd_Contratos_RowCommand" AutoGenerateColumns="false" PageSize="20">
                    <Columns>
                        <asp:BoundField DataField="Locatario" HeaderText="Locatario" />
                        <asp:BoundField DataField="Locador" HeaderText="Locador" />
                        <asp:BoundField DataField="Código do Imóvel" HeaderText="Código do Imóvel" />
                        <asp:BoundField DataField="Nº do Contrato" HeaderText="Nº do Contrato" />
                        <asp:BoundField DataField="Data de Inicio" HeaderText="Data de Inicio" />
                        <asp:BoundField DataField="Data de Termino" HeaderText="Data de Termino" />
                        <asp:ButtonField ButtonType="Link" ControlStyle-CssClass="btn btn-info" CommandName="Visualizar" Text="Visualizar" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>

</asp:Content>
