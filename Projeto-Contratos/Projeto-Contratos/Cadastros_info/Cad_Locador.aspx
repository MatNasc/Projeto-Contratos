<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cad_Locador.aspx.cs" Inherits="Projeto_Contratos.Cadastros_info.Cad_Locador" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<h1 class="text-center"; style="font-family:'Times New Roman'; font-size:70px">Cadastro de Locador</h1>
    <div class="container">
        <!--Os campos para inserção dos dados ficam todos organizados dentro de um "Jumbotron" -->
        <div class="jumbotron">

            <div class="row">
                <!-- O container foi dividido em três colunas de valores 5, 2 e 5. Na primeira coluna, ficam os dados
                    básicos de cadastro de pessoa (nome, profissão, RG, CPF e estado civíl). A segunda coluna serve como uma
                    separatória, onde mais a frente é alocado o botão de cadastro, e a última contém os campos para os dados de
                    endereço fixo do locador (Cidade, Bairro, Numero e Rua)-->
                <div class="col-sm-5">
                       <!-- Para fins de organização do espaço, a coluna para dados básicos pessoais, foi dividida em duas outras colunas
                            de valor 6 cada uma. No lado esquerdo, ficaram os campos para "Nome", "Profissão" e um DropdownList com as opções
                            de "estado civíl".--> 
                    <div class="col-sm-6">
                        <!-- Campos para inserção de "Nome" e "Profissão" -->
                        <asp:Label runat="server" ID="lblNome" Text="Nome:"></asp:Label>
                        <br />
                        <asp:TextBox runat="server" ID="txtNome" placeholder="Digite seu Nome"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label runat="server" ID="lbl" Text="Profissão:"></asp:Label>
                        <br />
                        <asp:TextBox runat="server" ID="TextBox1" placeholder="Digite sua Profissão"></asp:TextBox>
                        <br />
                        <br />
                        <!-- DropdownList para "Estado Civíl" -->
                        <asp:Label runat="server" ID="lblEC" Text="Estado Civíl: "></asp:Label>
                        <asp:DropDownList ID="DropList" AutoPostBack="true" runat="Server">
                            <asp:ListItem Text="Solteiro" Value="1" />
                            <asp:ListItem Text="Casado" Value="2" />
                            <asp:ListItem Text="Divorciado" Value="3" />
                            <asp:ListItem Text="Separado" Value="4" />
                            <asp:ListItem Text="Viúvo" Value="5" />
                        </asp:DropDownList>
                    </div>
                    <!-- Do lado direito, ficaram os campos para inserção de documentos -->
                    <div class="col-sm-6">
                        <asp:Label runat="server" ID="lblCPF" Text="CPF:"></asp:Label>
                        <br />
                        <asp:TextBox runat="server" ID="txtCPF" placeholder="Digite seu CPF"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label runat="server" ID="lblRG" Text="RG:"></asp:Label>
                        <br />
                        <asp:TextBox runat="server" ID="txtRG" placeholder="Digite seu RG"></asp:TextBox>
                    </div>                              
                </div>
                <!-- Coluna do meio -->
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
                <!-- Coluna para inserção de endereço -->
                <div class="col-sm-5">
                    <!-- Lado esquerdo ("Rua" e "Numero" -->
                    <div class="col-sm-6">
                        <asp:Label runat="server" ID="lblRua" Text="Rua:"></asp:Label>
                        <br />
                        <asp:TextBox runat="server" ID="txtRua" placeholder="Digite o nome da Rua"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label runat="server" ID="lblNum" Text="Numero:"></asp:Label>
                        <br />
                        <asp:TextBox runat="server" ID="txtNum" placeholder="Digite o numero da casa"></asp:TextBox>
                    </div>
                    <!-- Lado direito ("Bairro" e "Cidade") -->
                    <div class="col-sm-6">
                        <asp:Label runat="server" ID="lblBairro" Text="Bairro:"></asp:Label>
                        <br />
                        <asp:TextBox runat="server" ID="txtBairro" placeholder="Digite seu Bairro"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label runat="server" ID="lblCidade" Text="Cidade:"></asp:Label>
                        <br />
                        <asp:TextBox runat="server" ID="txtCidade" placeholder="Digite sua Cidade"></asp:TextBox>
                    </div>
                </div>
            </div>
        </div>
        <div class="text-center">
            <!-- Botão de cadastro, centralizado dentro da segunda coluna principal -->
            <asp:Button runat="server" ID="btnCadastrar" Text="Cadastrar" CssClass="btn btn-primary" />
        </div>
    </div>
</asp:Content>
