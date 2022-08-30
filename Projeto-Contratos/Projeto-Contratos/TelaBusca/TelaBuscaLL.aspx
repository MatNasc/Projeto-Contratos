<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TelaBuscaLL.aspx.cs" Inherits="Projeto_Contratos.TelaBusca.TelaBuscaLL" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
            background-image: url(../imgs/backcolor.jpg);
            background-repeat: no-repeat;
            background-size: cover;
        }

        corners 
        { 
            border: 1px solid green; 
            -moz-border-radius: 8px; 
            border-radius: 8px;
            overflow: hidden;
            -webkit-border-radius: 8px;
        }
    </style>

    <div class="container">
        <br />
        <div class="row">
            <div class="col-sm-4"></div>
            <div class="col-sm-4">
                <div class="row">
                    <asp:TextBox runat="server" ID="txtBusca" placeholder="Digite um Nome" Width="200px" Height="40px" Style="border-radius: 10px;"></asp:TextBox>
                    <asp:Button runat="server" ID="btnBusca" OnClick="btnBusca_Click" class="btn btn-black" Text="Procurar" />
                </div>
            </div>
            <div class="col-sm-4"></div>
        </div>
        <br />
        <div class="row">
            <asp:GridView runat="server" ID="grdClientes" AutoGenerateColumns="false" OnRowCommand="grdClientes_RowCommand" Width="100%" AllowPaging="true" PageSize="20" CssClass="table table-bordered table-condensed table-responsive table-hover">
                <AlternatingRowStyle BackColor="White" />
                <HeaderStyle BackColor="#000000" Font-Bold="true" Font-Size="Larger" ForeColor="White" />
                <RowStyle BackColor="#000000" ForeColor="White" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="true" ForeColor="White" />
                <Columns>
                    <asp:BoundField DataField="nome" HeaderText="NOME" />
                </Columns>
            </asp:GridView>
        </div>
        <a></a>


    </div>
</asp:Content>
