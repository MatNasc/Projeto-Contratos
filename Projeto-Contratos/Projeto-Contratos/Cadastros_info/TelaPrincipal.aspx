<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TelaPrincipal.aspx.cs" Inherits="Projeto_Contratos.Cadastros_info.TelaPrincipal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="stylesheet" href="../projeto_contrato_css/estilo.css" />

        <!-- Pagina inicial de cadastro:
        A partir daqui, é feito um redirecionamento para a página de cadastro correspondente -->
        <div class="container">
            <div class="col-sm-4">
                <div class="jumbotron" style="border-radius:30px; border:outset">
                    <div class="row-sm-6">
                    </div>
                    <div class="row-sm-4">
                        <div class="text-center">
                            <h2 class="box-title" style="font-size: 40px; font-family: 'Times New Roman', Times, serif">Locador</h2>
                            <!-- Redirecionar para página de cadastro do Locador -->
                            <asp:Button runat="server" ID="btnLocador" Text="Cadastrar" OnClick="btnLocador_Click" class="button" />
                        </div>
                    </div>
                    <div class="row-sm-2">
                    </div>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="jumbotron" style="border-radius:30px; border:outset">
                    <div class="text-center">
                        <h2 class="box-title" style="font-size: 40px; font-family: 'Times New Roman', Times, serif">Locatario</h2>
                        <!-- Redirecionar para página de cadastro do Locatário -->
                        <asp:Button runat="server" ID="btnLocatario" Text="Cadastrar" OnClick="btnLocatario_Click" class="button" />
                    </div>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="jumbotron" style="border-radius:30px; border:outset">
                    <div class="text-center">
                        <h2 class="box-title" style="font-size: 40px; font-family: 'Times New Roman', Times, serif">Imóvel</h2>
                        <!-- Redirecionar para página de cadastro de Imóveis -->
                        <asp:Button runat="server" ID="btnImovel" Text="Cadastrar" OnClick="btnImovel_Click" class="button" />
                    </div>
                </div>
            </div>

        </div>
</asp:Content>
