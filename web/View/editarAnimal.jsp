<%-- 
    Document   : editarAnimal
    Created on : 25/11/2020, 19:41:42
    Author     : carto
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Editar Animal </title>
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
            <jsp:useBean id="animal" scope="request" class="Entity.Animal" />
            <jsp:setProperty name="animal" property="nome"/>
            <jsp:setProperty name="animal" property="idade"/>
            <jsp:setProperty name="animal" property="generoAnimal"/>
            <jsp:setProperty name="animal" property="tipoAnimal"/>
            <jsp:setProperty name="animal" property="iDcliente"/>
            <jsp:setProperty name="animal" property="nomeCliente"/>
            
            
            <form method="get" action="_alterarAnimal.jsp">
                
                Nome: <input type="text" name="nome" value="<jsp:getProperty name="animal" property="nome"/>"><br>
                Idade: <input type="text" name="idade" value="<jsp:getProperty name="animal" property="idade"/>"><br>
                Genero: <input type="text" name="generoAnimal" value="<jsp:getProperty name="animal" property="generoAnimal"/>"><br>
                Tipo: <input type="text" name="tipoAnimal" value="<jsp:getProperty name="animal" property="tipoAnimal"/>"><br>
                ID cliente: <input type="text" name="iDcliente" value="<jsp:setProperty name="animal" property="iDcliente" value="" />">
                Nome Cliente: <input type="text" name="nomeCliente" value="<jsp:getProperty name="animal" property="nomeCliente" />">
                <input type="submit" value="Salvar" name="salvar" /><br>
            </form>

        </div>
    </body>
</html>
