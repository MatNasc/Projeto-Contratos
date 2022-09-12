<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditaImovel.aspx.cs" Inherits="Projeto_Contratos.PaginasEditar.EditaImovel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="stylesheet" href="../projeto_contrato_css/estilo.css" />

    <br />
    <h1 class="box-title" style="font-family: 'Times New Roman'; font-size: 70px">Editar Informações Imóvel</h1>
    <br />
    <br />

    <div class="row">

        <div class="content-box" style="border-radius: 30px; border: outset; height: 350px; width: 900px; padding: 35px; margin: auto">
            <div class="col-sm-5">
                <div class="col-sm-5">
                    <asp:Label runat="server" ID="lblRua_IM" Text="Rua:" Style="font-size: 15px; color: white; font-family: 'Times New Roman', Times, serif"></asp:Label>
                    <br />
                    <asp:TextBox runat="server" ID="txtRua_IM" Width="200px" Height="40px" Style="border-radius: 10px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label runat="server" ID="lblNum_IM" Text="Número:" Style="font-size: 15px; color: white; font-family: 'Times New Roman', Times, serif"></asp:Label>
                    <br />
                    <asp:TextBox runat="server" ID="txtNum_IM" Width="200px" Height="40px" Style="border-radius: 10px"></asp:TextBox>
                </div>
                <div class="col-sm-4"></div>
                <div class="col-sm-3">
                    <asp:Label runat="server" ID="lblBairro_IM" Text="Bairro:" Style="font-size: 15px; color: white; font-family: 'Times New Roman', Times, serif"></asp:Label>
                    <br />
                    <asp:TextBox runat="server" ID="txtBairro_IM" Width="200px" Height="40px" Style="border-radius: 10px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label runat="server" ID="lblCidadeIM" Text="Cidade:" Style="font-size: 15px; color: white; font-family: 'Times New Roman', Times, serif"></asp:Label>
                    <br />
                    <asp:TextBox runat="server" ID="txtCidade_IM" Width="200px" Height="40px" Style="border-radius: 10px"></asp:TextBox>
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
                <asp:TextBox runat="server" ID="txtAgua" Width="250px" Height="40px" Style="border-radius: 10px"></asp:TextBox>
                <br />
                <br />
                <asp:Label runat="server" ID="lblLuz" Text="Conta de Luz:" Style="font-size: 15px; color: white; font-family: 'Times New Roman', Times, serif"></asp:Label>
                <br />
                <asp:TextBox runat="server" ID="txtLuz" Width="250px" Height="40px" Style="border-radius: 10px"></asp:TextBox>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <br />
                </div>
            </div>
            <div class="text-center">
                <asp:Button runat="server" ID="btnEditar_IM" OnClick="btnEditar_IM_Click" Text="Editar"  CssClass="buttonT" />
            </div>
        </div>
    </div>
</asp:Content>
