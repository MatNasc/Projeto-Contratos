<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cad_Imovel.aspx.cs" Inherits="Projeto_Contratos.Cadastros_info.Cad_Imovel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="stylesheet" href="../projeto_contrato_css/estilo.css" />

    <h1 class="" style="font-family: 'Times New Roman'; font-size: 60px">Cadastro de Imóvel</h1>

    <div class="container">
        <div class="jumbotron" style="border-radius: 30px; border: outset">
            <div class="row">
                <div class="col-sm-5">
                    <div class="col-sm-5">
                        <asp:Label runat="server" ID="lblRua_IM" Text="Rua:" Style="font-size: 15px; color: whitesmoke; font-family: 'Times New Roman', Times, serif"></asp:Label>
                        <br />
                        <asp:TextBox runat="server" ID="txtRua_IM" placeholder="Digite o nome da Rua" Width="200px" Height="40px" Style="border-radius: 10px"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label runat="server" ID="lblNum_IM" Text="Número:" Style="font-size: 15px; color: white; font-family: 'Times New Roman', Times, serif"></asp:Label>
                        <br />
                        <asp:TextBox runat="server" ID="txtNum_IM" placeholder="Digite o Numero da casa" Width="200px" Height="40px" Style="border-radius: 10px"></asp:TextBox>
                    </div>
                    <div class="col-sm-2"></div>
                    <div class="col-sm-5">
                        <asp:Label runat="server" ID="lblBairro_IM" Text="Bairro:" Style="font-size: 15px; color: white; font-family: 'Times New Roman', Times, serif"></asp:Label>
                        <br />
                        <asp:TextBox runat="server" ID="txtBairro_IM" placeholder="Digite seu Bairro" Width="200px" Height="40px" Style="border-radius: 10px"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label runat="server" ID="lblCidadeIM" Text="Cidade:" Style="font-size: 15px; color: white; font-family: 'Times New Roman', Times, serif"></asp:Label>
                        <br />
                        <asp:TextBox runat="server" ID="txtCidade_IM" placeholder="Digite sua Cidade" Width="200px" Height="40px" Style="border-radius: 10px"></asp:TextBox>
                    </div>
                </div>
                <div class="col-sm-2 text-center">
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <div class="row"></div>
                </div>
                <div class="col-sm-5">
                    <asp:Label runat="server" ID="lblAgua" Text="Conta de água:" Style="font-size: 15px; color: white; font-family: 'Times New Roman', Times, serif"></asp:Label>
                    <br />
                    <asp:TextBox runat="server" ID="txtAgua" placeholder="Insira o Número de sua conta de água" Width="250px" Height="40px" Style="border-radius: 10px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label runat="server" ID="lblLuz" Text="Conta de Luz:" Style="font-size: 15px; color: white; font-family: 'Times New Roman', Times, serif"></asp:Label>
                    <br />
                    <asp:TextBox runat="server" ID="txtLuz" placeholder="Insira o Número de sua conta de luz" Width="250px" Height="40px" Style="border-radius: 10px"></asp:TextBox>

                </div>
            </div>
        </div>
        <div class="text-center">
            <asp:Button runat="server" ID="btnCadastrar_IM" Text="Cadastrar" Onclick="btnCadastrar_IM_Click" CssClass="btn btn-primary" />
        </div>
    </div>
</asp:Content>
