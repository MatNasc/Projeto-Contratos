<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TelaBuscaLL.aspx.cs" Inherits="Projeto_Contratos.TelaBusca.TelaBuscaLL" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <br />
        <div class="row">
            <asp:TextBox runat="server" ID="txtBusca" placeholder="Digite um Nome"></asp:TextBox>
            <asp:Button runat="server" ID="btnBusca" OnClick="btnBusca_Click" Text="Procurar" CssClass="btn btn-primary" />
        </div>
        <br />
        <div class="row">
            <asp:DropDownList runat="server" ID="DropListLL">
                <asp:ListItem Text="Locador" Value="8" />
                <asp:ListItem Text="Locatario" Value="9" />
            </asp:DropDownList>
        </div>
        <br />
        <div class="row">
            <asp:GridView runat="server" ID="grdClientes" AutoGenerateColumns="false" CssClass="table table-bordered table-hover" OnRowCommand="grdClientes_RowCommand" Width="100%" AllowPaging="true" PageSize="20">
                <Columns>
                    <asp:BoundField DataField="nome" HeaderText="NOME" />
                    <asp:BoundField DataField="profissao" HeaderText="PROFISSÃO" />
                    <asp:BoundField DataField="estadocivil" HeaderText="ESTADO CIVIL" />
                    <asp:BoundField DataField="cpf" HeaderText="CPF" />
                    <asp:BoundField DataField="rg" HeaderText="RG" />
                    <asp:BoundField DataField="rua" HeaderText="RUA" />
                    <asp:BoundField DataField="numero" HeaderText="NÚMERO" />
                    <asp:BoundField DataField="bairro" HeaderText="BAIRRO" />
                    <asp:BoundField DataField="cidade" HeaderText="CIDADE" />
                    <asp:ButtonField ButtonType="Link" CommandName="editar" Text="Editar" />
                    <asp:ButtonField ButtonType="Link" CommandName="excluir" Text="Excluir" />
                </Columns>
            </asp:GridView>
        </div>
    </div>


</asp:Content>
