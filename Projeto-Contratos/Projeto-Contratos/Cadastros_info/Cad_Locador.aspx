<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cad_Locador.aspx.cs" Inherits="Projeto_Contratos.Cadastros_info.Cad_Locador" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="stylesheet" href="../projeto_contrato_css/estilo.css" />

    <br />
    <h1 class="box-title" style="font-family: 'Times New Roman'; font-size: 70px">Cadastro de Locador</h1>
    <br />
    <br />
    <div class="container">
        <!--Os campos para inserção dos dados ficam todos organizados dentro de um "Jumbotron" -->
        <div class="content-box" style="border: outset; border-radius: 30px; width: 1000px; height: 400px; padding: 35px; margin: auto">

            <div class="row">
                <!-- O container foi dividido em três colunas de valores 5, 2 e 5. Na primeira coluna, ficam os dados
                    básicos de cadastro de pessoa (nome, profissão, RG, CPF e estado civíl). A segunda coluna serve como uma
                    separatória, onde mais a frente é alocado o botão de cadastro, e a última contém os campos para os dados de
                    endereço fixo do locador (Cidade, Bairro, Numero e Rua)-->
                <div class="col-sm-5">
                    <!-- Para fins de organização do espaço, a coluna para dados básicos pessoais, foi dividida em duas outras colunas
                            de valor 5 cada uma. No lado esquerdo, ficaram os campos para "Nome", "Profissão" e um DropdownList com as opções
                            de "estado civíl".-->
                    <div class="col-sm-5">
                        <!-- Campos para inserção de "Nome" e "Profissão" -->
                        <asp:Label runat="server" ID="lblNome" Text="Nome:" Style="font-size: 15px; color: white; font-family: 'Times New Roman', Times, serif"></asp:Label>
                        <br />
                        <asp:TextBox runat="server" ID="txtNome" placeholder="Digite seu Nome" Width="200px" Height="40px" Style="border-radius: 10px"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label runat="server" ID="lblProfissao" Text="Profissão:" Style="font-size: 15px; color: white; font-family: 'Times New Roman', Times, serif"></asp:Label>
                        <br />
                        <asp:TextBox runat="server" ID="txtProfissao" placeholder="Digite sua Profissão" Width="200px" Height="40px" Style="border-radius: 10px"></asp:TextBox>
                        <br />
                        <br />
                        <!-- DropdownList para "Estado Civíl" -->
                        <asp:Label runat="server" ID="lblEC" Text="Estado Civíl: " Style="font-size: 15px; color: white; font-family: 'Times New Roman', Times, serif"></asp:Label>
                        <asp:DropDownList ID="DropList" AutoPostBack="true" runat="Server">
                            <asp:ListItem Text="Solteiro" Value="Solteiro" />
                            <asp:ListItem Text="Casado" Value="Casado" />
                            <asp:ListItem Text="Divorciado" Value="Divorciado" />
                            <asp:ListItem Text="Separado" Value="Separado" />
                            <asp:ListItem Text="Viúvo" Value="Viúvo" />
                        </asp:DropDownList>
                    </div>
                    <!-- Coluna para dar um espaçamento entre as "TextBox" -->
                    <div class=" col-sm-2">
                    </div>
                    <div class="col-sm-5">
                        <!-- Do lado direito, ficaram os campos para inserção de documentos -->
                        <asp:Label runat="server" ID="lblCPF" Text="CPF:" Style="font-size: 15px; color: white; font-family: 'Times New Roman', Times, serif"></asp:Label>
                        <br />
                        <asp:TextBox runat="server" ID="txtCPF" placeholder="Digite seu CPF" Width="200px" Height="40px" Style="border-radius: 10px"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label runat="server" ID="lblRG" Text="RG:" Style="font-size: 15px; color: white; font-family: 'Times New Roman', Times, serif"></asp:Label>
                        <br />
                        <asp:TextBox runat="server" ID="txtRG" placeholder="Digite seu RG" Width="200px" Height="40px" Style="border-radius: 10px"></asp:TextBox>
                    </div>
                </div>
                <!-- Coluna do meio -->
                <div class="col-sm-1 text-center">
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
                    <div class="col-sm-5">
                        <asp:Label runat="server" ID="lblRua" Text="Rua:" Style="font-size: 15px; color: white; font-family: 'Times New Roman', Times, serif"></asp:Label>
                        <br />
                        <asp:TextBox runat="server" ID="txtRua" placeholder="Digite o nome da Rua" Width="200px" Height="40px" Style="border-radius: 10px"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label runat="server" ID="lblNum" Text="Numero:" Style="font-size: 15px; color: white; font-family: 'Times New Roman', Times, serif"></asp:Label>
                        <br />
                        <asp:TextBox runat="server" ID="txtNum" placeholder="Digite o numero da casa" Width="200px" Height="40px" Style="border-radius: 10px"></asp:TextBox>
                    </div>
                    <div class="col-sm-2">
                    </div>
                    <!-- Lado direito ("Bairro" e "Cidade") -->
                    <div class="col-sm-5">
                        <asp:Label runat="server" ID="lblBairro" Text="Bairro:" Style="font-size: 15px; color: white; font-family: 'Times New Roman', Times, serif"></asp:Label>
                        <br />
                        <asp:TextBox runat="server" ID="txtBairro" placeholder="Digite seu Bairro" Width="200px" Height="40px" Style="border-radius: 10px"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label runat="server" ID="lblCidade" Text="Cidade:" Style="font-size: 15px; color: white; font-family: 'Times New Roman', Times, serif"></asp:Label>
                        <br />
                        <asp:TextBox runat="server" ID="txtCidade" placeholder="Digite sua Cidade" Width="200px" Height="40px" Style="border-radius: 10px"></asp:TextBox>
                    </div>
                </div>
                <div class="col-sm-1"></div>

            </div>
            <div class="text-center">
                <!-- Botão de cadastro, centralizado dentro da segunda coluna principal -->
                <asp:Button runat="server" ID="btnCadastrar" Text="Cadastrar" OnClick="btnCadastrar_Click" CssClass="buttonT" />
            </div>
        </div>
    </div>
</asp:Content>
