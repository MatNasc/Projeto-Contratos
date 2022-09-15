<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditaInfoLocatario.aspx.cs" Inherits="Projeto_Contratos.PaginasEditar.EditaInfoLocatario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="stylesheet" href="../TelaBusca/Estilo_CAD.css" />

    <p class="box-title" style="font-family: 'Times New Roman'; font-size: 70px">Editar Informações Locatário</p>
    <br />
    <div class="container">
        <div class="content-box" style="border: outset; width: 700px; height: 400px; padding: 35px; margin: auto">
            <div class="row">
                <div class="col-sm-1"></div>

                <div class="col-sm-4">
                    <asp:Label runat="server" ID="lbl_nomeLT" Text="Nome:" Style="font-size: 15px; color: white; font-family: 'Times New Roman', Times, serif"></asp:Label>
                    <br />
                    <asp:TextBox runat="server" ID="txt_nomeLT" Width="200px" Height="40px" Style="border-radius: 10px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label runat="server" ID="lbl_profLT" Text="Profissão:" Style="font-size: 15px; color: white; font-family: 'Times New Roman', Times, serif"></asp:Label>
                    <br />
                    <asp:TextBox runat="server" ID="txt_profLT" Width="200px" Height="40px" Style="border-radius: 10px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label runat="server" ID="lbl_LTEC" Text="Estado Civíl: " Style="font-size: 18px; color: white; font-family: 'Times New Roman', Times, serif"></asp:Label>
                    <asp:DropDownList ID="DropList" AutoPostBack="true" CssClass="" runat="Server">
                        <asp:ListItem Text="Solteiro" Value="Solteiro" />
                        <asp:ListItem Text="Casado" Value="Casado" />
                        <asp:ListItem Text="Divorciado" Value="Divorciado" />
                        <asp:ListItem Text="Separado" Value="Separado" />
                        <asp:ListItem Text="Viúvo" Value="Viúvo" />
                    </asp:DropDownList>
                </div>
                <div class="col-sm-1 "></div>
                <div class="col-sm-5">
                    <asp:Label runat="server" ID="lbl_LTCPF"  Text="CPF:" Style="font-size: 15px; color: white; font-family: 'Times New Roman', Times, serif"></asp:Label>
                    <br />
                    <asp:TextBox runat="server" ID="txt_LTCPF"  AutoPostBack="true" Width="200px" Height="40px" Style="border-radius: 10px"></asp:TextBox>
                    <br /> <asp:Label runat="server" ID="lblAlertaCpf"></asp:Label>
                    <br />
                    <asp:Label runat="server" ID="lbl_LCRG" Text="RG:" Style="font-size: 15px; color: white; font-family: 'Times New Roman', Times, serif"></asp:Label>
                    <br />
                    <asp:TextBox runat="server" ID="txt_LTRG" Width="200px"  AutoPostBack="true" Height="40px" Style="border-radius: 10px"></asp:TextBox>
                     <br /> <asp:Label runat="server" ID="lblAlertaRG"></asp:Label>
                </div>
                <div class="col-sm-1"></div>
            </div>

            <div class="row">
                <div class="col-sm-3"></div>
                <div class="col-sm-6">
                    <div class="text-center">
                        <asp:Button runat="server" ID="btnEditarLT" OnClick="btnEditarLT_Click" Text="Editar" Width="150px" Height="50px" CssClass="buttonT" Font-Size="25px" />
                    </div>
                </div>
                <div class="col-sm-3"></div>
            </div>
        </div>
    </div>
</asp:Content>
