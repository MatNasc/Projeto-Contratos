<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditaInfoLocador.aspx.cs" Inherits="Projeto_Contratos.PaginasEditar.EditaInfoLocador" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="stylesheet" href="../projeto_contrato_css/estilo.css" />

    <h1 class="box-title" style="font-family: 'Times New Roman'; font-size: 70px">Editar Informações Locador</h1>
    <br />

    <div class="container">

        <div class="content-box" style="border: outset; width: 1000px; height: 400px; padding: 35px; margin: auto">

            <div class="row">

                <div class="col-sm-5">

                    <div class="col-sm-5">

                        <asp:Label runat="server" ID="lblNome" Text="Nome:" Style="font-size: 15px; color: white; font-family: 'Times New Roman', Times, serif"></asp:Label>
                        <br />
                        <asp:TextBox runat="server" ID="txtNome" Width="200px" Height="40px" Style="border-radius: 10px"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label runat="server" ID="lblProfissao" Text="Profissão:" Style="font-size: 15px; color: white; font-family: 'Times New Roman', Times, serif"></asp:Label>
                        <br />
                        <asp:TextBox runat="server" ID="txtProfissao" Width="200px" Height="40px" Style="border-radius: 10px"></asp:TextBox>
                        <br />
                        <br />

                        <asp:Label runat="server" ID="lblEC" Text="Estado Civíl: " Style="font-size: 15px; color: white; font-family: 'Times New Roman', Times, serif"></asp:Label>
                        <asp:DropDownList ID="DropList" AutoPostBack="true" runat="Server">
                            <asp:ListItem Text="Solteiro" Value="Solteiro" />
                            <asp:ListItem Text="Casado" Value="Casado" />
                            <asp:ListItem Text="Divorciado" Value="Divorciado" />
                            <asp:ListItem Text="Separado" Value="Separado" />
                            <asp:ListItem Text="Viúvo" Value="Viúvo" />
                        </asp:DropDownList>
                    </div>

                    <div class=" col-sm-2">
                    </div>
                    <div class="col-sm-5">

                        <asp:Label runat="server" ID="lblCPF" Text="CPF:" Style="font-size: 15px; color: white; font-family: 'Times New Roman', Times, serif"></asp:Label>
                        <br />
                        <asp:TextBox runat="server" ID="txtCPF" Width="200px" Height="40px" Style="border-radius: 10px"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label runat="server" ID="lblRG" Text="RG:" Style="font-size: 15px; color: white; font-family: 'Times New Roman', Times, serif"></asp:Label>
                        <br />
                        <asp:TextBox runat="server" ID="txtRG" Width="200px" Height="40px" Style="border-radius: 10px"></asp:TextBox>
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

                <div class="col-sm-5" >
                    <asp:Label runat="server" ID="lbl_endereco" Text="Endereço:" Style="font-size: 15px; color: white; font-family: 'Times New Roman', Times, serif"></asp:Label>
                    <br />
                    <asp:TextBox runat="server" ID="txt_endereco" Width="300px" Height="60px" Style="border-radius: 10px"></asp:TextBox>
                </div>

            </div>
            <div class="text-center">
                <asp:Button runat="server" ID="btnEditarLD" OnClick="btnEditar_Click" Text="Editar" Width="150px" Height="50px" CssClass="buttonT" Font-Size="25px" />
            </div>
        </div>
    </div>
</asp:Content>
