<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TeladeBusca1.aspx.cs" Inherits="Projeto_Contratos.TelaBusca.TeladeBusca1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <div class="container">
        <div class="col-sm-6">
            <div class="jumbotron">
                <div class="row-sm-6">
                </div>
                <div class="row-sm-4">
                    <div class="text-center">
                        <h2>Locadores e Locatários</h2> <!-- Redirecionar para página de cadastro do Locador -->
                        <asp:Button runat="server" ID="btnLL" Text="Pesquisar" OnClick="btnLL_Click" CssClass="btn btn-primary" />
                    </div>
                </div>
                <div class="row-sm-2">
                </div>
            </div>
        </div>
        <div class="col-sm-6">
            <div class="jumbotron">
                <div class="text-center">
                    <h2>Contratos</h2> <!-- Redirecionar para página de cadastro do Locatário -->
                    <asp:Button runat="server" ID="btnContratos" Text="Pesquisar" OnClick="btnContratos_Click" CssClass="btn btn-primary" />
                </div>
            </div>
        </div>
        </div>
</asp:Content>
