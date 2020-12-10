<%-- 
    Document   : editarCliente
    Created on : 24/11/2020, 01:39:32
    Author     : carto
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Editar Cadastro </title>
        <link rel="stylesheet" href="../Styles.css">
        <script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
    </head>
    <body>
        <div class="wrapper">
            <div class="sidebar">
                <img src="../Images/LOGO_F_Branca.png" alt="some text" width=200 height=70>
                <ul>
                    <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
                    <li><a href="cadastrarCliente.jsp"><i class="fas fa-user"></i> Cadastrar Cliente</a></li>
                    <li><a href="cadastrarAnimal.jsp"><i class="fas fa-paw"></i> Cadastrar Animal</a></li>
                    <li><a href="exibirClientes.jsp"><i class="fas fa-address-card"></i> Exibir Clientes</a></li>
                    <li><a href="exibirAnimais.jsp"><i class="fas fa-paw"></i> Exibir Animais</a></li>

                </ul> 
                <div class="social_media">  
                    <a href="#"><i class="fas fa-wallet"></i></a>
                    <a href="#"><i class="fas fa-chart-bar"></i></a>
                    <a href="#"><i class="fas fa-calendar-check"></i></a>
                    <a href="#"><i class="fas fa-exclamation-triangle"></i></a>
                </div>
            </div>
            <div class="main_content">
                <div class="header"> Editar Cadastro </div>  
            </div>
        </div>

        <div class="formulario">
            <jsp:useBean id="cliente" scope="request" class="Entity.Cliente" />
            <jsp:setProperty name="cliente" property="id"/>
            <jsp:setProperty name="cliente" property="nomeCliente"/>
            <jsp:setProperty name="cliente" property="cpf"/>
            <jsp:setProperty name="cliente" property="telefone"/>
            <jsp:setProperty name="cliente" property="endereco"/>
            <jsp:setProperty name="cliente" property="genero"/>


            <form method="get" action="_alterarCliente.jsp">
                <input type="hidden" value="<jsp:getProperty name="cliente" property="id" />" name="id" />
                Id: <jsp:getProperty name="cliente" property="id"/> - 
                Nome: <input type="text" size="41" name="nomeCliente" value="<jsp:getProperty name="cliente" property="nomeCliente"/>"/> <br>
                CPF: <input type="text" name="cpf" size=12 maxlength=14 value="<jsp:getProperty name="cliente" property="cpf"/>"/><br>
                Telefone: <input type="text" maxlength=14 name="telefone" value="<jsp:getProperty name="cliente" property="telefone"/>"/><br>
                Endereço: <input type="text" size="45" name="endereco" value="<jsp:getProperty name="cliente" property="endereco"/>"/><br>
                Gênero: <input type="text" size="3" name="genero" value="<jsp:getProperty name="cliente" property="genero"/>"/><br>
                <input type="submit" value="Salvar" name="salvar" /><br>
            </form>

        </div>
    </body>
</html>
