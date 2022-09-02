<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TelaBuscaLL.aspx.cs" Inherits="Projeto_Contratos.TelaBusca.TelaBuscaLL" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<link rel="stylesheet" href="Estilo_CAD.css" />

    <div class="main-content">
    <div class="container">
        <br />
        <div class="row">
            <div class="col-sm-4"></div>
            <div class="col-sm-4">
                <div class="row">
                    <asp:TextBox runat="server" ID="txtBusca" placeholder="Digite um Nome" Width="200px" Height="40px" Style="border-radius: 10px;"></asp:TextBox>
                    <asp:Button runat="server" ID="btnBusca" OnClick="btnBusca_Click" class="btn btn-black" Text="Procurar" />
                    <asp:RadioButton ID="RadioButton" Text="Locador" Checked="false" runat="server" GroupName="Pesquisa" />
                    <asp:RadioButton ID="RadioButton2" Text="Locatário" Checked="false" runat="server" GroupName="Pesquisa" />
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
                    <asp:BoundField DataField="cpf" HeaderText="CPF" />
                    <asp:BoundField DataField="rg" HeaderText="RG" />
                    <asp:BoundField DataField="profissao" HeaderText="PROFISSÃO" />
                    <asp:BoundField DataField="estadocivil" HeaderText="ESTADO CIVIL" />
                    <asp:BoundField DataField="endereco" HeaderText="ENDEREÇO" />
                </Columns>
            </asp:GridView>
            <div class="row">
                <asp:GridView runat="server" ID="grdClientes2" AutoGenerateColumns="false" OnRowCommand="grdClientes2_RowCommand" Width="100%" AllowPaging="true" PageSize="20" CssClass="table table-bordered table-condensed table-responsive table-hover">
                    <AlternatingRowStyle BackColor="White" />
                    <HeaderStyle BackColor="#000000" Font-Bold="true" Font-Size="Larger" ForeColor="White" />
                    <RowStyle BackColor="#000000" ForeColor="White" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="true" ForeColor="White" />

                    <Columns>
                        <asp:BoundField DataField="nome" HeaderText="NOME" />
                        <asp:BoundField DataField="cpf" HeaderText="CPF" />
                        <asp:BoundField DataField="rg" HeaderText="RG" />
                        <asp:BoundField DataField="profissao" HeaderText="PROFISSÃO" />
                        <asp:BoundField DataField="estadocivil" HeaderText="ESTADO CIVIL" />
                    </Columns>

                </asp:GridView>
            </div>
            <a></a>


        </div>
        </div>
        </div>
</asp:Content>
