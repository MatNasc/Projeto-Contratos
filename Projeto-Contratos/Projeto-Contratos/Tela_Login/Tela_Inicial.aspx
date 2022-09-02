<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tela_Inicial.aspx.cs" Inherits="Projeto_Contratos.Tela_Login.Tela_Inicial" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>

    <webopt:BundleReference runat="server" Path="~/Content/css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
    <!-- Latest compiled and minified CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

    <link rel="stylesheet" href="css/style.css" />
    <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css" />
</head>

<body>
    <form runat="server">

        <asp:ScriptManager runat="server">
            <Scripts>
                <%--To learn more about bundling scripts in ScriptManager see https://go.microsoft.com/fwlink/?LinkID=301884 --%>
                <%--Framework Scripts--%>
                <asp:ScriptReference Name="MsAjaxBundle" />
                <asp:ScriptReference Name="jquery" />
                <asp:ScriptReference Name="bootstrap" />
                <asp:ScriptReference Name="WebForms.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebForms.js" />
                <asp:ScriptReference Name="WebUIValidation.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebUIValidation.js" />
                <asp:ScriptReference Name="MenuStandards.js" Assembly="System.Web" Path="~/Scripts/WebForms/MenuStandards.js" />
                <asp:ScriptReference Name="GridView.js" Assembly="System.Web" Path="~/Scripts/WebForms/GridView.js" />
                <asp:ScriptReference Name="DetailsView.js" Assembly="System.Web" Path="~/Scripts/WebForms/DetailsView.js" />
                <asp:ScriptReference Name="TreeView.js" Assembly="System.Web" Path="~/Scripts/WebForms/TreeView.js" />
                <asp:ScriptReference Name="WebParts.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebParts.js" />
                <asp:ScriptReference Name="Focus.js" Assembly="System.Web" Path="~/Scripts/WebForms/Focus.js" />
                <asp:ScriptReference Name="WebFormsBundle" />
                <%--Site Scripts--%>
            </Scripts>
        </asp:ScriptManager>

        <div class="row">
            <div class="col-sm-4 text-center" style="padding: 50px">

                <img src="../imgs/logoc.png" style="width: 400px; height: 200px" />

                <p style="font-size: 70px; font-family:'Times New Roman', Times, serif">Login</p>

                <br />
                <br />
                <br />

                <div class="row text-left">
                    <div class="col-sm-3"></div>
                    <div class="col-sm-6">
                        <h style="font-size: 15px; font-family:'Times New Roman', Times, serif"">Usuário</h>
                        <asp:TextBox runat="server" ID="txt_usuario" Width="200px" Height="40px" style="border-radius:10px" ></asp:TextBox>
                        <asp:Label runat="server" ID="txt_usuario_verifica"></asp:Label>

                    </div>
                    <div class="col-sm-3"></div>
                </div>


                <br />
                <br />
                <br />

                <div class="row text-left">
                    <div class="col-sm-3"></div>
                    <div class="col-sm-6">
                        <h style="font-size: 15px; font-family:'Times New Roman', Times, serif"">Senha</h>
                        <asp:TextBox runat="server" ID="txt_Senha" Width="200px"  Height="40px" style="border-radius:10px;"></asp:TextBox>
                        <asp:Label runat="server" ID="txt_senha_verifica"></asp:Label>
                    </div>
                    <div class="col-sm-3"></div>
                </div>

                <br />
                <br />
                <br />

                <div class="row text-left">
                    <div class="col-sm-3"></div>
                    <div class="col-sm-6">
                        <asp:Button runat="server" ID="btn_entrar" Text="Entrar" OnClick="btn_entrar_Click" Font-Size="20px" Width="80px" />
                    </div>
                    <div class="col-sm-3"></div>
                </div>
            </div>

            <div class="col-sm-8">
                <img src="../imgs/backcolor.jpg" />
            </div>
        </div>

    </form>
</body>
</html>
