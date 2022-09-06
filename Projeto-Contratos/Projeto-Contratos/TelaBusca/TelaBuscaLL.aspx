<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TelaBuscaLL.aspx.cs" Inherits="Projeto_Contratos.TelaBusca.TelaBuscaLL" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="Estilo_CAD.css" />

    <div class="container-principal">
        <div id="main">
            <h1 class="box-title" style="font-family: 'Times New Roman'; font-size: 70px">Busca de Locadores e Locatários</h1>
            <div class="content-box" style="margin-right: 150px; margin-left: 150px; padding-bottom: 150px; margin-top: 50px">
                <asp:TextBox runat="server" ID="txtBusca" placeholder="Digite um Nome" style="border-radius:10px; border:1px solid #ccc;width:25%; height:40px; padding:20px 20px; display:inline-block; margin-top:50px; margin-left:36%; font-size:16px"></asp:TextBox>
                <asp:Button runat="server" ID="btnBusca" OnClick="btnBusca_Click" class="button" Style="margin-left: 20px; height: 65px;" Text="Procurar" />
                <br />
                <asp:RadioButton ID="RadioButton" Text="Locador" Checked="false" runat="server" GroupName="Pesquisa" style="margin-left:36%;" />
                <asp:RadioButton ID="RadioButton2" Text="Locatário" Checked="false" runat="server" GroupName="Pesquisa" style="margin-left:10%;" />
                <br />
                <br />
                <asp:GridView runat="server" ID="grdClientes" AutoGenerateColumns="false" OnRowCommand="grdClientes_RowCommand" Width="100%" AllowPaging="true" PageSize="20" CssClass="table" style="background-color:black; color:white; width:80%; margin-left:120px; border:thin;">
                    <Columns>
                        <asp:BoundField DataField="nome" HeaderText="NOME" />
                        <asp:BoundField DataField="cpf" HeaderText="CPF" />
                        <asp:BoundField DataField="rg" HeaderText="RG" />
                        <asp:BoundField DataField="profissao" HeaderText="PROFISSÃO" />
                        <asp:BoundField DataField="estadocivil" HeaderText="ESTADO CIVIL" />
                        <asp:BoundField DataField="endereco" HeaderText="ENDEREÇO" />
<<<<<<< HEAD
                        <asp:ButtonField ButtonType="Link" ControlStyle-CssClass="btn btn-info" CommandName="EditarLocador" Text="Editar" />
                        <asp:ButtonField ButtonType="Link" ControlStyle-CssClass="btn btn-info" ControlStyle-BackColor="Red" CommandName="ExcluirLocador" Text="Excluir" />
=======
                        <asp:ButtonField ButtonType="Link" CommandName="editar" ControlStyle-CssClass="btn btn-primary" Text="Editar" />
                        <asp:ButtonField ButtonType="Link" CommandName="cad_imovel" ControlStyle-CssClass="btn btn-success" Text="Cadastrar Imóvel" />

>>>>>>> 0f575d254fb7f60c2626cb15cd6819c3b7d15178
                    </Columns>
                </asp:GridView>

                <asp:GridView runat="server" ID="grdClientes2" AutoGenerateColumns="false" OnRowCommand="grdClientes2_RowCommand" Width="100%" AllowPaging="true" PageSize="20" CssClass="table" style="background-color:black; color:white; width:60%; margin-left:250px; border:thin;">
                    <Columns>
                        <asp:BoundField DataField="nome" HeaderText="NOME" />
                        <asp:BoundField DataField="cpf" HeaderText="CPF" />
                        <asp:BoundField DataField="rg" HeaderText="RG" />
                        <asp:BoundField DataField="profissao" HeaderText="PROFISSÃO" />
                        <asp:BoundField DataField="estadocivil" HeaderText="ESTADO CIVIL" />
<<<<<<< HEAD
                        <asp:ButtonField ButtonType="Link" ControlStyle-CssClass="btn btn-info" CommandName="EditarLocatario" Text="Editar" />
                        <asp:ButtonField ButtonType="Link" ControlStyle-CssClass="btn btn-info" ControlStyle-BackColor="Red" CommandName="ExcluirLocatario" Text="Excluir" />
=======
                        <asp:ButtonField ButtonType="Link" CommandName="editar" ControlStyle-CssClass="btn btn-primary" Text="Editar" />
>>>>>>> 0f575d254fb7f60c2626cb15cd6819c3b7d15178
                    </Columns>

                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
