<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cad_Locatario.aspx.cs" Inherits="Projeto_Contratos.Cadastros_info.Cad_Locatario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <style>
        body{
            background-image:url("../imgs/backcolor.jpg");
            }
        h1{
            color:white;         
        }

        .jumbotron{
            background-color: rgba(10,23,55,1);

        }
       
    </style>
    <div style="padding: 50px">
        <h1 class="text-center"; style="font-family:'Times New Roman'; font-size:70px">Cadastro de Locatário</h1>
        <div class="container">
            <div class="jumbotron" style="border-radius:30px; border:outset">
                <div class="row">
                    <div class="col-sm-3"></div>
                    <div class="col-sm-6">
                        <!-- Lado esquerdo (Nome, profissão e estado civíl) -->
                        <div class="col-sm-6">
                            <asp:Label runat="server" ID="lbl_nomeLT" Text="Nome:" style="font-size:15px ; color:white; font-family:'Times New Roman', Times, serif"></asp:Label>
                            <br />
                            <asp:TextBox runat="server" ID="txt_nomeLT" placeholder="Digite seu Nome" Width="200px" Height="40px" Style="border-radius: 10px"></asp:TextBox>
                            <br />
                            <br />
                            <asp:Label runat="server" ID="lbl_profLT" Text="Profissão:" style="font-size:15px ; color:white; font-family:'Times New Roman', Times, serif"></asp:Label>
                            <br />
                            <asp:TextBox runat="server" ID="txt_profLT" placeholder="Digite sua Profissão" Width="200px" Height="40px" Style="border-radius: 10px"></asp:TextBox>
                            <br />
                            <br />
                            <asp:Label runat="server" ID="lbl_LTEC" Text="Estado Civíl: " style="font-size:18px ; color:white; font-family:'Times New Roman', Times, serif"></asp:Label>
                            <asp:DropDownList ID="DropList" AutoPostBack="true" CssClass="" runat="Server">
                                <asp:ListItem Text="Solteiro" Value="1" />
                                <asp:ListItem Text="Casado" Value="2" />
                                <asp:ListItem Text="Divorciado" Value="3" />
                                <asp:ListItem Text="Separado" Value="4" />
                                <asp:ListItem Text="Viúvo" Value="5" />
                            </asp:DropDownList>
                        </div>
                        <!-- Lado direito (CPF e RG) -->
                        <div class="col-sm-6">
                            <asp:Label runat="server" ID="lbl_LTCPF" Text="CPF:" style="font-size:15px ; color:white; font-family:'Times New Roman', Times, serif"></asp:Label>
                            <br />
                            <asp:TextBox runat="server" ID="txt_LTCPF" placeholder="Digite seu CPF" Width="200px" Height="40px" Style="border-radius: 10px"></asp:TextBox>
                            <br />
                            <br />
                            <asp:Label runat="server" ID="lbl_LCRG" Text="RG:" style="font-size:15px ; color:white; font-family:'Times New Roman', Times, serif"></asp:Label>
                            <br />
                            <asp:TextBox runat="server" ID="txt_LTRG" placeholder="Digite seu RG" Width="200px" Height="40px" Style="border-radius: 10px"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-sm-3"></div>
                </div>
            </div>
            <div class="text-center">
                <!-- Botão de cadastro, centralizado dentro do container -->
                <asp:Button runat="server" ID="btnCadastrarLT" Text="Cadastrar" CssClass="btn btn-primary" />
            </div>
        </div>
    </div>
</asp:Content>
