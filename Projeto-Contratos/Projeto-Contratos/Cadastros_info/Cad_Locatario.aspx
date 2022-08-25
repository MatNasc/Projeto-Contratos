<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cad_Locatario.aspx.cs" Inherits="Projeto_Contratos.Cadastros_info.Cad_Locatario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1 class="text-center"; style="font-family:'Times New Roman'; font-size:70px">Cadastro de Locatário</h1>
    <div class="container">
        <div class="jumbotron">
            <div class="row">
                <div class="col-sm-3"></div>
                <div class="col-sm-6">
                    <!-- Lado esquerdo (Nome, profissão e estado civíl) -->
                    <div class="col-sm-6">
                        <asp:Label runat="server" ID="lbl_nomeLT" Text="Nome:"></asp:Label>
                        <br />
                        <asp:TextBox runat="server" ID="txt_nomeLT" placeholder="Digite seu Nome"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label runat="server" ID="lbl_profLT" Text="Profissão:"></asp:Label>
                        <br />
                        <asp:TextBox runat="server" ID="txt_profLT" placeholder="Digite sua Profissão"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label runat="server" ID="lbl_LTEC" Text="Estado Civíl: "></asp:Label>
                        <asp:DropDownList ID="DropList" AutoPostBack="true" runat="Server">
                            <asp:ListItem Text="Solteiro" Value="1" />
                            <asp:ListItem Text="Casado" Value="2" />
                            <asp:ListItem Text="Divorciado" Value="3" />
                            <asp:ListItem Text="Separado" Value="4" />
                            <asp:ListItem Text="Viúvo" Value="5" />
                        </asp:DropDownList>
                    </div>
                    <!-- Lado direito (CPF e RG) -->
                    <div class="col-sm-6">
                        <asp:Label runat="server" ID="lbl_LTCPF" Text="CPF:"></asp:Label>
                        <br />
                        <asp:TextBox runat="server" ID="txt_LTCPF" placeholder="Digite seu CPF"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label runat="server" ID="lbl_LCRG" Text="RG:"></asp:Label>
                        <br />
                        <asp:TextBox runat="server" ID="txt_LTRG" placeholder="Digite seu RG"></asp:TextBox>
                    </div>
                </div>
                <div class="col-sm-3"></div>
            </div>
        </div>
        <div class="text-center">
            <!-- Botão de cadastro, centralizado dentro do container -->
            <asp:Button runat="server" ID="btnCadastrarLT" Text="Cadastrar" CssClass="btn btn-primary" />
    </div>
</asp:Content>
