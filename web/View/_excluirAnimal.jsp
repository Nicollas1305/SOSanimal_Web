<%-- 
    Document   : _excluirAnimal
    Created on : 25/11/2020, 19:23:23
    Author     : carto
--%>

<%@page import="Controller.JpaUtil"%>
<%@page import="Controller.AnimalJpaController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    AnimalJpaController animalDAO = new AnimalJpaController(JpaUtil.getEmf());
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Excluir Animal </title>
        <link rel="stylesheet" href="../Styles.css">
        <script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
    </head>
    <body>

        <div class="wrapper">
            <div class="sidebar">
                <img src="../Images/LOGO_F_Branca.png" alt="some text" width=200 height=70>
                <ul>
                    <li><a href="../index.jsp"><i class="fas fa-home"></i> Home</a></li>
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
                <div class="header"> Clientes </div>  
            </div>
        </div>
        <jsp:useBean id="animal" scope="request" class="Entity.Animal" />
        <jsp:setProperty name="animal" property="nome"/>
        <h1>Excluir animal</h1>

        <%
            animalDAO.destroy(animal.getNome());
        %>

        <div class="formulario">
            <p>-Animal Excluido!</p><br><br> 
            <p>Nome:  <jsp:getProperty name="animal" property="nome"/></p>
            <form action="exibirAnimais.jsp">
                <input type="submit" value="Retornar">
            </form>
        </div>


    </body>
</html>
