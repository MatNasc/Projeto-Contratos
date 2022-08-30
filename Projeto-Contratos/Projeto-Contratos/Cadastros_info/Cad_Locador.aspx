﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cad_Locador.aspx.cs" Inherits="Projeto_Contratos.Cadastros_info.Cad_Locador" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <style>
        body{
            background-image:url("../imgs/backcolor.jpg");
            
            }
        h1{
            color:white;         
        }

        .jumbotron{
            background-color: rgba(10,23,55,1);

        }
    </style>

    <div style="padding: 50px">
        <h1 class="text-center"; style="font-family:'Times New Roman'; font-size:70px">Cadastro de Locador</h1>
        <div class="container">
            <!--Os campos para inserção dos dados ficam todos organizados dentro de um "Jumbotron" -->
            <div class="jumbotron" style="border:outset ;border-radius:30px">

                <div class="row">
                    <!-- O container foi dividido em três colunas de valores 5, 2 e 5. Na primeira coluna, ficam os dados
                    básicos de cadastro de pessoa (nome, profissão, RG, CPF e estado civíl). A segunda coluna serve como uma
                    separatória, onde mais a frente é alocado o botão de cadastro, e a última contém os campos para os dados de
                    endereço fixo do locador (Cidade, Bairro, Numero e Rua)-->
                    <div class="col-sm-5">
                        <!-- Para fins de organização do espaço, a coluna para dados básicos pessoais, foi dividida em duas outras colunas
                            de valor 5 cada uma. No lado esquerdo, ficaram os campos para "Nome", "Profissão" e um DropdownList com as opções
                            de "estado civíl".-->
                        <div class="col-sm-5
                           ">
                            <!-- Campos para inserção de "Nome" e "Profissão" -->
                            <asp:Label runat="server" ID="lblNome" Text="Nome:" Style="font-size: 15px; color:white; font-family: 'Times New Roman', Times, serif"></asp:Label>
                            <br />
                            <asp:TextBox runat="server" ID="txtNome" placeholder="Digite seu Nome" Width="200px" Height="40px" Style="border-radius: 10px"></asp:TextBox>
                            <br />
                            <br />
                            <asp:Label runat="server" ID="lbl" Text="Profissão:" Style="font-size: 15px; color:white; font-family: 'Times New Roman', Times, serif"></asp:Label>
                            <br />
                            <asp:TextBox runat="server" ID="TextBox1" placeholder="Digite sua Profissão" Width="200px" Height="40px" Style="border-radius: 10px"></asp:TextBox>
                            <br />
                            <br />
                            <!-- DropdownList para "Estado Civíl" -->
                            <asp:Label runat="server" ID="lblEC" Text="Estado Civíl: " Style="font-size: 15px; color:white; font-family: 'Times New Roman', Times, serif"></asp:Label>
                            <asp:DropDownList ID="DropList" AutoPostBack="true" runat="Server">
                                <asp:ListItem Text="Solteiro" Value="1" />
                                <asp:ListItem Text="Casado" Value="2" />
                                <asp:ListItem Text="Divorciado" Value="3" />
                                <asp:ListItem Text="Separado" Value="4" />
                                <asp:ListItem Text="Viúvo" Value="5" />
                            </asp:DropDownList>
                        </div>
                        <!-- Coluna para dar um espaçamento entre as "TextBox" -->
                        <div class=" col-sm-2">
                        </div>
                        <div class="col-sm-5">
                            <!-- Do lado direito, ficaram os campos para inserção de documentos -->
                            <asp:Label runat="server" ID="lblCPF" Text="CPF:" Style="font-size: 15px; color:white; font-family: 'Times New Roman', Times, serif"></asp:Label>
                            <br />
                            <asp:TextBox runat="server" ID="txtCPF" placeholder="Digite seu CPF" Width="200px" Height="40px" Style="border-radius: 10px"></asp:TextBox>
                            <br />
                            <br />
                            <asp:Label runat="server" ID="lblRG" Text="RG:" Style="font-size: 15px; color:white; font-family: 'Times New Roman', Times, serif"></asp:Label>
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
                            <asp:Label runat="server" ID="lblRua" Text="Rua:" Style="font-size: 15px; color:white; font-family: 'Times New Roman', Times, serif"></asp:Label>
                            <br />
                            <asp:TextBox runat="server" ID="txtRua" placeholder="Digite o nome da Rua" Width="200px" Height="40px" Style="border-radius: 10px"></asp:TextBox>
                            <br />
                            <br />
                            <asp:Label runat="server" ID="lblNum" Text="Numero:" Style="font-size: 15px; color:white; font-family: 'Times New Roman', Times, serif"></asp:Label>
                            <br />
                            <asp:TextBox runat="server" ID="txtNum" placeholder="Digite o numero da casa" Width="200px" Height="40px" Style="border-radius: 10px"></asp:TextBox>
                        </div>
                        <div class="col-sm-2">
                        </div>
                        <!-- Lado direito ("Bairro" e "Cidade") -->
                        <div class="col-sm-5">
                            <asp:Label runat="server" ID="lblBairro" Text="Bairro:" Style="font-size: 15px; color:white; font-family: 'Times New Roman', Times, serif"></asp:Label>
                            <br />
                            <asp:TextBox runat="server" ID="txtBairro" placeholder="Digite seu Bairro" Width="200px" Height="40px" Style="border-radius: 10px"></asp:TextBox>
                            <br />
                            <br />
                            <asp:Label runat="server" ID="lblCidade" Text="Cidade:" Style="font-size: 15px; color:white; font-family: 'Times New Roman', Times, serif"></asp:Label>
                            <br />
                            <asp:TextBox runat="server" ID="txtCidade" placeholder="Digite sua Cidade" Width="200px" Height="40px" Style="border-radius: 10px"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-sm-1"></div>
                </div>
            </div>
            <div class="text-center">
                <!-- Botão de cadastro, centralizado dentro da segunda coluna principal -->
                <asp:Button runat="server" ID="btnCadastrar" Text="Cadastrar" CssClass="btn btn-primary" />
            </div>
        </div>
    </div>
</asp:Content>
