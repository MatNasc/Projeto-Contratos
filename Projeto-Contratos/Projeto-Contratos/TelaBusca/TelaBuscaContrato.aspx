<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TelaBuscaContrato.aspx.cs" Inherits="Projeto_Contratos.TelaBusca.TelaBuscaContrato" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<!-- Estilo da Pagina de Pesquisa -->
    <div style="padding: 50px">
    <h2 class="text-center">Consultar contrato por cliente</h2>
    <div class ="container">
    <div class ="jumbotron">
    <div class="row">
    <div class="col-sm-3"></div>
    <div class="col-sm-6">
    Nome do cliente:
    <asp:TextBox ID="Consultar" runat="server"></asp:TextBox>
    <asp:Button runat="server" ID="BtnPesquisar" OnClick="BtnPesquisar_Click" Text="Buscar" CssClass="btn btn-primary" />
    </div>
    <div class="col-sm-3"></div>
    </div>

    <br/>

        
<!-- Estilo da Area de Resultados -->
    <div class="row">
    <asp:GridView RowStyle-BackColor="#999999" CssClass="table table-bordered table-hover" runat="server" ID="grd_Contratos" Width="100%" OnRowCommand="grd_Contratos_RowCommand" AutoGenerateColumns="false" PageSize="20">
        <Columns>

            <asp:BoundField DataField="Locatario" HeaderText="Locatario" />
            <asp:BoundField DataField="Locador" HeaderText="Locador" />

            <asp:BoundField DataField="Código do Imóvel" HeaderText="Código do Imóvel" />
            <asp:BoundField DataField="Nº do Contrato" HeaderText="Nº do Contrato" />
            <asp:BoundField DataField="Data de Inicio" HeaderText="Data de Inicio" />
            <asp:BoundField DataField="Data de Termino" HeaderText="Data de Termino" />

            <asp:ButtonField ButtonType="Link" CommandName="editar" Text="Editar" />
            <asp:ButtonField ButtonType="Link" CommandName="excluir" Text="Excluir" />
        </Columns>
    </asp:GridView>


    </div>
    </div>
    </div>
    </div>
</asp:Content>
