<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cad_Locatario.aspx.cs" Inherits="Projeto_Contratos.Cadastros_info.Cad_Locatario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="stylesheet" href="../TelaBusca/Estilo_CAD.css" />

    <br />
    <p class="box-title" style="font-family: 'Times New Roman'; font-size: 70px">Cadastro de Locatário</p>
    <div class="container">
        <div class="content-box" style="border-radius: 30px; border: outset; width: 700px; height: 400px; padding: 35px; margin: auto">
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-4">
                    <div class="row">
                        <asp:Label runat="server" ID="lbl_nomeLT" Text="Nome:" Style="font-size: 15px; color: white; font-family: 'Times New Roman', Times, serif"></asp:Label>
                        <br />
                        <asp:TextBox runat="server" ID="txt_nomeLT" placeholder="Digite seu Nome" Width="200px" Height="40px" Style="border-radius: 10px"></asp:TextBox>
                    </div>
                    <div class="row" style="margin-top:20px">
                        <asp:Label runat="server" ID="lbl_profLT" Text="Profissão:" Style="font-size: 15px; color: white; font-family: 'Times New Roman', Times, serif"></asp:Label>
                        <br />
                        <asp:TextBox runat="server" ID="txt_profLT" placeholder="Digite sua Profissão" Width="200px" Height="40px" Style="border-radius: 10px"></asp:TextBox>
                    </div>
                    <div class="row" style="margin-top:20px">
                        <asp:Label runat="server" ID="lbl_LTEC" Text="Estado Civíl: " Style="font-size: 18px; color: white; font-family: 'Times New Roman', Times, serif"></asp:Label>
                        <asp:DropDownList ID="DropList" AutoPostBack="true" CssClass="" runat="Server">
                            <asp:ListItem Text="Solteiro" Value="Solteiro" />
                            <asp:ListItem Text="Casado" Value="Casado" />
                            <asp:ListItem Text="Divorciado" Value="Divorciado" />
                            <asp:ListItem Text="Separado" Value="Separado" />
                            <asp:ListItem Text="Viúvo" Value="Viúvo" />
                        </asp:DropDownList>
                    </div>
                </div>
                <!-- Lado esquerdo (Nome, profissão e estado civíl) -->
                <div class="col-sm-2"></div>
                <!-- Lado direito (CPF e RG) -->
                <div class="col-sm-4">
                    <div class="row">
                        <asp:Label runat="server" ID="lbl_LTCPF" Text="CPF:" Style="font-size: 15px; color: white; font-family: 'Times New Roman', Times, serif"></asp:Label>
                        <br />
                        <asp:TextBox runat="server" ID="txt_LTCPF" placeholder="Digite seu CPF" OnTextChanged="txt_LTCPF_TextChanged" AutoPostBack="true" Width="200px" Height="40px" Style="border-radius: 10px"></asp:TextBox>
                        <br />
                        <asp:Label runat="server" ID="lblAlertaCpf"></asp:Label>
                    </div>
                    <div class="row" style="margin-top:20px">
                        <asp:Label runat="server" ID="lbl_LCRG" Text="RG:" Style="font-size: 15px; color: white; font-family: 'Times New Roman', Times, serif"></asp:Label>
                        <br />
                        <asp:TextBox runat="server" ID="txt_LTRG" placeholder="Digite seu RG" OnTextChanged="txt_LTRG_TextChanged" AutoPostBack="true" Width="200px" Height="40px" Style="border-radius: 10px"></asp:TextBox>
                        <br />
                        <asp:Label runat="server" ID="lblAlertaRG"></asp:Label>
                    </div>
                </div>
                <div class="col-sm-1"></div>
            </div>
            <div class="row">
                <div class="col-sm-3"></div>
                <div class="col-sm-6">
                    <div class="text-center">
                        <!-- Botão de cadastro, centralizado dentro do container -->
                        <asp:Button runat="server" ID="btnCadastrarLT" Text="Cadastrar" OnClick="btnCadastrarLT_Click" class="buttonT" />
                    </div>
                </div>
                <div class="col-sm-3"></div>
            </div>
        </div>
    </div>


</asp:Content>
