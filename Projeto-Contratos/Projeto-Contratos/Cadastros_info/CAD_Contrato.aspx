<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CAD_Contrato.aspx.cs" Inherits="Projeto_Contratos.Cadastros_info.CAD_Contrato" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="../TelaBusca/Estilo_CAD.css" />

    <div class="container-principal">
        <div id="main">
            <h1 class="box-title" style="font-family: 'Times New Roman'; font-size: 70px">Novo Contrato</h1>
            <div class="content-box" style="margin-right: 150px; padding-bottom: 0; margin-left: 150px; margin-top: 50px; height: auto">
                <div class="row">
                    <div class="col-md-5">
                        <h1 class="box-title" style="font-family: 'Times New Roman'; font-size: 40px;">Dados do Locatário</h1>
                    </div>
                    <div class="col-md-2"></div>
                    <div class="col-md-5">
                        <h1 class="box-title" style="font-family: 'Times New Roman'; font-size: 40px;">Dados do Imóvel</h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-5" style="margin-left: 50px">
                        <asp:Label runat="server" ID="lbl_CPFlt" Text="CPF:" Style="font-size: 15px; color: white; font-family: 'Times New Roman', Times, serif"></asp:Label>
                        <br />
                        <asp:TextBox runat="server" ID="txt_CPFlt" placeholder="Digite um CPF" Width="200px" Height="40px" Style="border: thin; border-radius: 10px; padding-left: 10px"></asp:TextBox>
                    </div>
                    <div class="col-md-2"></div>
                    <div class="col-md-5" style="margin-left: 170px;">
                        <div class="col-sm-6" style="padding:0; width:245.33px">
                            <asp:Label runat="server" ID="lbl_NomeLD" Text="Nome do locador:" Style="font-size: 15px; color: white; font-family: 'Times New Roman', Times, serif"></asp:Label>
                            <br />
                            <asp:TextBox runat="server" ID="txt_NomeLD" ReadOnly="true" Width="200px" Height="40px" Style="background-color: lightgrey; border: thin; border-radius: 10px; padding-left: 10px"></asp:TextBox>
                        </div>
                        <div class="col-sm-6" style="padding:0; width:245.33px;">
                            <asp:Label runat="server" ID="lbl_Valor" Text="Valor do imóvel:" Style="font-size: 15px; color: white; font-family: 'Times New Roman', Times, serif"></asp:Label>
                            <br />
                            <asp:TextBox runat="server" ID="txt_Valor" ReadOnly="true" Width="200px" Height="40px" Style="background-color: lightgrey; border: thin; border-radius: 10px; padding-left: 10px"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="main-content" style="margin-top: 20px; margin-bottom: 0; max-height: 200px">
                    <div id="cont-1" style="margin-bottom: 200px">
                        <asp:Label runat="server" ID="lbl_RGlt" Text="RG:" Style="font-size: 15px; color: white; font-family: 'Times New Roman', Times, serif"></asp:Label>
                        <br />
                        <asp:TextBox runat="server" ID="txt_RGlt" ReadOnly="true" Width="200px" Height="40px" Style="background-color: lightgrey; border: thin; border-radius: 10px; padding-left: 10px"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label runat="server" ID="lbl_EClt" Text="Estado Civil:" Style="font-size: 15px; color: white; font-family: 'Times New Roman', Times, serif"></asp:Label>
                        <br />
                        <asp:TextBox runat="server" ID="txt_EClt" ReadOnly="true" Width="200px" Height="40px" Style="background-color: lightgrey; border: thin; border-radius: 10px; padding-left: 10px"></asp:TextBox>
                        <br />
                        <br />
                        <br />
                        <asp:Label runat="server" ID="lbl_DataI" Text="Data de início:" Style="font-size: 30px; color: white; font-family: 'Times New Roman', Times, serif"></asp:Label>
                        <br />
                        <asp:TextBox runat="server" ID="txt_DataI" placeholder="Data de início do contrato" Width="200px" Height="40px" Style="border: thin; border-radius: 10px; padding-left: 10px"></asp:TextBox>
                    </div>
                    <div id="cont-2" style="margin-bottom: 200px">
                        <asp:Label runat="server" ID="lbl_NomeLT" Text="Nome:" Style="font-size: 15px; color: white; font-family: 'Times New Roman', Times, serif"></asp:Label>
                        <br />
                        <asp:TextBox runat="server" ID="txt_NomeLT" ReadOnly="true" Width="200px" Height="40px" Style="background-color: lightgrey; border: thin; border-radius: 10px; padding-left: 10px"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label runat="server" ID="LBL_ProfLT" Text="Profissão:" Style="font-size: 15px; color: white; font-family: 'Times New Roman', Times, serif"></asp:Label>
                        <br />
                        <asp:TextBox runat="server" ID="txt_ProfLT" ReadOnly="true" Width="200px" Height="40px" Style="background-color: lightgrey; border: thin; border-radius: 10px; padding-left: 10px"></asp:TextBox>
                        <br />
                        <br />
                        <br />
                        <asp:Label runat="server" ID="lbl_DataF" Text="Data de término:" Style="font-size: 30px; color: white; font-family: 'Times New Roman', Times, serif"></asp:Label>
                        <br />
                        <asp:TextBox runat="server" ID="txt_DataF" placeholder="Data de término do contrato" Width="200px" Height="40px" Style="border: thin; border-radius: 10px; padding-left: 10px"></asp:TextBox>
                    </div>
                    <div id="cont-3" style="margin-bottom: 200px"></div>
                    <div id="cont-4" style="margin-bottom: 200px">
                        <asp:Label runat="server" ID="lbl_Rua" Text="Rua:" Style="font-size: 15px; color: white; font-family: 'Times New Roman', Times, serif"></asp:Label>
                        <br />
                        <asp:TextBox runat="server" ID="txt_Rua" ReadOnly="true" Width="200px" Height="40px" Style="background-color: lightgrey; border: thin; border-radius: 10px; padding-left: 10px"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label runat="server" ID="lbl_Bairro" Text="Bairro:" Style="font-size: 15px; color: white; font-family: 'Times New Roman', Times, serif"></asp:Label>
                        <br />
                        <asp:TextBox runat="server" ID="txt_Bairro" ReadOnly="true" Width="200px" Height="40px" Style="background-color: lightgrey; border: thin; border-radius: 10px; padding-left: 10px"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label runat="server" ID="lbl_nAgua" Text="Nº Água:" Style="font-size: 15px; color: white; font-family: 'Times New Roman', Times, serif"></asp:Label>
                        <br />
                        <asp:TextBox runat="server" ID="txt_nAgua" ReadOnly="true" Width="200px" Height="40px" Style="background-color: lightgrey; border: thin; border-radius: 10px; padding-left: 10px"></asp:TextBox>
                    </div>
                    <div id="cont-5" style="margin-bottom: 200px">
                        <asp:Label runat="server" ID="lbl_num" Text="Número:" Style="font-size: 15px; color: white; font-family: 'Times New Roman', Times, serif"></asp:Label>
                        <br />
                        <asp:TextBox runat="server" ID="txt_num" ReadOnly="true" Width="200px" Height="40px" Style="background-color: lightgrey; border: thin; border-radius: 10px; padding-left: 10px"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label runat="server" ID="lbl_cidade" Text="Cidade:" Style="font-size: 15px; color: white; font-family: 'Times New Roman', Times, serif"></asp:Label>
                        <br />
                        <asp:TextBox runat="server" ID="txt_Cidade" ReadOnly="true" Width="200px" Height="40px" Style="background-color: lightgrey; border: thin; border-radius: 10px; padding-left: 10px"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label runat="server" ID="lbl_nLuz" Text="Nº Luz:" Style="font-size: 15px; color: white; font-family: 'Times New Roman', Times, serif"></asp:Label>
                        <br />
                        <asp:TextBox runat="server" ID="tzt_nLuz" ReadOnly="true" Width="200px" Height="40px" Style="background-color: lightgrey; border: thin; border-radius: 10px; padding-left: 10px"></asp:TextBox>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-5"></div>
                    <div class="col-md-2">
                        <asp:Button runat="server" ID="btnCadastrarCont" Text="Gerar Contrato" OnClick="btnCadastrarCont_Click" Style="margin-top: 100px; margin-bottom: 50px" class="buttonT" />
                    </div>
                    <div class="col-md-5"></div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
