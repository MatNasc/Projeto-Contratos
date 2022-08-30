<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cad_Imovel.aspx.cs" Inherits="Projeto_Contratos.Cadastros_info.Cad_Imovel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <div style="padding:50px"></div>
    <h1 class="text-center"; style="font-family:'Times New Roman'; font-size:60px">Cadastro de Imóvel</h1>
    <div class="container">
        <div class="jumbotron">
            <div class="row">
                <div class="col-sm-5">
                    <div class="col-sm-6">
                        <asp:Label runat="server" ID="lblRua_IM" Text="Rua:"></asp:Label>
                        <br />
                        <asp:TextBox runat="server" ID="txtRua_IM" placeholder="Digite o nome da Rua"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label runat="server" ID="lblNum_IM" Text="Numero:"></asp:Label>
                        <br />
                        <asp:TextBox runat="server" ID="txtNum_IM" placeholder="Digite o Numero da casa"></asp:TextBox>
                    </div>
                    <div class="col-sm-6">
                        <asp:Label runat="server" ID="lblBairro_IM" Text="Bairro:"></asp:Label>
                        <br />
                        <asp:TextBox runat="server" ID="txtBairro_IM" placeholder="Digite seu Bairro"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label runat="server" ID="lblCidadeIM" Text="Cidade:"></asp:Label>
                        <br />
                        <asp:TextBox runat="server" ID="txtCidade_IM" placeholder="Digite sua Cidade"></asp:TextBox>
                    </div>
                </div>
                <div class="col-sm-2 text-center">
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <div class="row">
                    </div>

                </div>
                <div class="col-sm-5">
                    <asp:Label runat="server" ID="lblAgua" Text="Conta de água:"></asp:Label>
                    <br />
                    <asp:TextBox runat="server" ID="txtAgua" placeholder="Insira o Número de sua conta de água" Width="250"></asp:TextBox>
                    <br />                   
                    <br />
                    <asp:Label runat="server" ID="lblLuz" Text="Conta de Luz:"></asp:Label>
                    <br />
                    <asp:TextBox runat="server" ID="txtLuz" placeholder="Insira o Número de sua conta de luz" Width="250"></asp:TextBox>

                </div>
            </div>
        </div>
        <div class="text-center">
            <asp:Button runat="server" ID="btnCadastrar_IM" Text="Cadastrar" CssClass="btn btn-primary" />
        </div>
    </div>
</asp:Content>
