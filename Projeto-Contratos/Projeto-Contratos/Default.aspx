<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Projeto_Contratos._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="stylesheet" href="TelaBusca/Estilo_CAD.css" />

    <div class="container-fluid">
        <div class="main-content">
            <div>
                <div id="box-1" class="content-box-default" style="margin-left: 10px; margin-right: 10px;">
                    <h1 class="box-title" style="font-size: 27px; margin-left: 10px">Busca de Locadores e Locatários</h1>
                    <asp:Button runat="server" ID="btnbuscaLL" OnClick="btnbuscaLL_Click" CssClass="button" Style="margin-top: 150px; margin-left: 65px" Text="Buscar" />
                </div>
            </div>
            <div>
                <div id="box-2" class="content-box-default" style="margin-left: 10px; margin-right: 10px;">
                    <h1 class="box-title">Busca de Contratos</h1>
                    <asp:Button runat="server" ID="btnbuscaC" OnClick="btnbuscaC_Click" CssClass="button" Style="margin-top: 170px; margin-left: 65px" Text="Buscar" />
                </div>
            </div>
            <div>
                <div id="box-3" class="content-box-default" style="margin-left: 10px; margin-right: 10px;">
                    <h1 class="box-title">Busca de Imóveis</h1>
                    <asp:Button runat="server" ID="btnBuscaImovel" OnClick="btnBuscaImovel_Click" CssClass="button" Style="margin-top: 170px; margin-left: 65px" Text="Buscar" />
                </div>
            </div>
            <div>
                <div id="box-4" class="content-box-default" style="margin-left: 10px; margin-right: 10px;">
                    <h1 class="box-title">Cadastro de Locadores</h1>
                    <asp:Button runat="server" ID="btnCADld" OnClick="btnCADld_Click" CssClass="button" Style="margin-top: 170px; margin-left: 45px" Text="Cadastrar" />
                </div>
            </div>
            <div>
                <div id="box-5" class="content-box-default" style="margin-left: 10px; margin-right: 10px;">
                    <h1 class="box-title">Cadastro de Locatários</h1>
                    <asp:Button runat="server" ID="btnCADlt" OnClick="btnCADlt_Click" CssClass="button" Style="margin-top: 170px; margin-left: 45px" Text="Cadastrar" />
                </div>
            </div>
        </div>
    </div>


</asp:Content>
