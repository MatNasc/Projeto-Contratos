<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TelaBuscaLL.aspx.cs" Inherits="Projeto_Contratos.TelaBusca.TelaBuscaLL" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <br />
        <div class="row">
            <asp:TextBox runat="server" ID="txtBusca" placeholder="Digite um Nome"></asp:TextBox>
            <asp:Button runat="server" ID="btnBusca" OnClick="btnBusca_Click" Text="Procurar" />
        </div>
        <br />
        <div class="row">
            <asp:GridView runat="server" ID="grdClientes" AutoGenerateColumns="false" OnRowCommand="grdClientes_RowCommand" Width="100%" AllowPaging="true" PageSize="20">
                <Columns>
                    <asp:BoundField DataField="nome" HeaderText="NOME" />
                </Columns>
            </asp:GridView>
        </div>



    </div>

</asp:Content>
