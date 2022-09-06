<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cad_Contrato.aspx.cs" Inherits="Projeto_Contratos.Cadastros_info.Cad_Contrato" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="../TelaBusca/Estilo_CAD.css" />

    <div class="container-principal">
        <div id="main">
            <div class="content-box" style="margin-right: 150px; margin-left: 150px; padding-bottom: 150px; margin-top:50px">
                <asp:TextBox runat="server" ID="txtBusca" placeholder="Digite um Nome" style="border-radius:10px; border:1px solid #ccc;width:25%; height:40px; padding:20px 20px; display:inline-block; margin-top:50px; margin-left:36%; font-size:16px"></asp:TextBox>
                <asp:Button runat="server" ID="btnBuscaLt" OnClick="btnBuscaLt_Click" class="button" Style="margin-left: 20px; height: 65px;" Text="Procurar" />
                <br />
                <br />
                <br />
                <asp:GridView runat="server" ID="grdLocatarios" AutoGenerateColumns="false" OnRowCommand="grdLocatarios_RowCommand" Width="100%" AllowPaging="true" PageSize="20" CssClass="table" style="background-color:black; color:white; width:60%; margin-left:250px; border:thin;">
                    <Columns>
                        <asp:BoundField DataField="nome" HeaderText="NOME" />
                        <asp:BoundField DataField="cpf" HeaderText="CPF" />
                        <asp:BoundField DataField="rg" HeaderText="RG" />
                        <asp:BoundField DataField="profissao" HeaderText="PROFISSÃO" />
                        <asp:BoundField DataField="estadocivil" HeaderText="ESTADO CIVIL" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
