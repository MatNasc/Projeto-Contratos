<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cad_Imovel.aspx.cs" Inherits="Projeto_Contratos.Cadastros_info.Cad_Imovel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="stylesheet" href="../TelaBusca/Estilo_CAD.css" />

    <br />
    <h1 class="box-title" style="font-family: 'Times New Roman'; font-size: 60px">Cadastro de Imóvel</h1>
    <br />
    <br />

    <div class="row">

        <div class="content-box" style="border-radius: 30px; border: outset; height: auto; width: 900px; padding: 35px; margin: auto;">
            <div class="col-sm-5">
                <div class="col-sm-5">
                    <div class="row">
                        <asp:Label runat="server" ID="lblCEP" Text="CEP:" Style="font-size: 15px; color: white; font-family: 'Times New Roman', Times, serif"></asp:Label>
                        <br />
                        <asp:TextBox runat="server" ID="txtCEP" OnTextChanged="txtCEP_TextChanged" AutoPostBack="true" placeholder="Digite seu CEP" Width="200px" Height="40px" Style="border-radius: 10px"></asp:TextBox>
                        <asp:Literal ID="litResultado" runat="server"/>
                    </div>
                    <div class="row" style="margin-top: 20px">
                        <asp:Label runat="server" ID="lblNum_IM" Text="Número:" Style="font-size: 15px; color: white; font-family: 'Times New Roman', Times, serif"></asp:Label>
                        <br />
                        <asp:TextBox runat="server" ID="txtNum_IM" placeholder="Digite o Número da casa" Width="200px" Height="40px" Style="border-radius: 10px"></asp:TextBox>
                    </div>
                    <div class="row" style="margin-top: 20px">
                        <asp:Label runat="server" ID="lbl_valor" Text="Valor:" Style="font-size: 15px; color: white; font-family: 'Times New Roman', Times, serif"></asp:Label>
                        <br />
                        <asp:TextBox runat="server" ID="txt_valor" placeholder="Digite o valor do imóvel" Width="200px" Height="40px" Style="border-radius: 10px"></asp:TextBox>
                    </div>

                </div>
                <div class="col-sm-4"></div>
                <div class="col-sm-3">
                    <div class="row">
                        <asp:Label runat="server" ID="lblRua_IM" Text="Rua:" Style="font-size: 15px; color: white; font-family: 'Times New Roman', Times, serif"></asp:Label>
                        <br />
                        <asp:TextBox runat="server" ID="txtRua_IM" placeholder="Digite o nome da Rua" Width="200px" Height="40px" Style="border-radius: 10px"></asp:TextBox>
                    </div>
                    <div class="row" style="margin-top: 20px">
                        <asp:Label runat="server" ID="lblBairro_IM" Text="Bairro:" Style="font-size: 15px; color: white; font-family: 'Times New Roman', Times, serif"></asp:Label>
                        <br />
                        <asp:TextBox runat="server" ID="txtBairro_IM" placeholder="Digite seu Bairro" Width="200px" Height="40px" Style="border-radius: 10px"></asp:TextBox>                       
                    </div>
                    <div class="row" style="margin-top: 20px">
                         <asp:Label runat="server" ID="lblCidadeIM" Text="Cidade:" Style="font-size: 15px; color: white; font-family: 'Times New Roman', Times, serif"></asp:Label>
                        <br />
                        <asp:TextBox runat="server" ID="txtCidade_IM" placeholder="Digite sua Cidade" Width="200px" Height="40px" Style="border-radius: 10px"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="col-sm-3 text-center">
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <div class="row"></div>
            </div>
            <div class="col-sm-4">
                <asp:Label runat="server" ID="lblAgua" Text="Conta de água:" Style="font-size: 15px; color: white; font-family: 'Times New Roman', Times, serif"></asp:Label>
                <br />
                <asp:TextBox runat="server" ID="txtAgua" placeholder="Insira o Número de sua conta de água" Width="250px" Height="40px" Style="border-radius: 10px"></asp:TextBox>
                <br />
                <br />
                <asp:Label runat="server" ID="lblLuz" Text="Conta de Luz:" Style="font-size: 15px; color: white; font-family: 'Times New Roman', Times, serif"></asp:Label>
                <br />
                <asp:TextBox runat="server" ID="txtLuz" placeholder="Insira o Número de sua conta de luz" Width="250px" Height="40px" Style="border-radius: 10px"></asp:TextBox>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <br />
                </div>
            </div>
            <div class="text-center">
                <asp:Button runat="server" ID="btnCadastrar_IM" Text="Cadastrar" OnClick="btnCadastrar_IM_Click" CssClass="buttonT" />
            </div>
        </div>
    </div>
</asp:Content>
