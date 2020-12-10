<%-- 
    Document   : excluirCliente
    Created on : 24/11/2020, 02:00:05
    Author     : carto
--%>

<%@page import="Controller.JpaUtil"%>
<%@page import="Controller.ClienteJpaController"%>
<%@page import="Entity.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ClienteJpaController clienteDAO = new ClienteJpaController(JpaUtil.getEmf());
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Excluir Cliente </title>
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
        
        
        <jsp:useBean id="cliente" scope="request" class="Entity.Cliente" />
        <jsp:setProperty name="cliente" property="id"/>
        <jsp:setProperty name="cliente" property="nomeCliente"/>
        <h1>Excluir cliente</h1>
        
        <%
            clienteDAO.destroy(cliente.getId());
        %>
        <div class="formulario">
            <p>-Cliente Excluido!</p><br><br> 
            <p>ID: <jsp:getProperty name="cliente" property="id"/></p>
            <p>Nome: <jsp:getProperty name="cliente" property="nomeCliente" /></p>
            <form action="exibirClientes.jsp">
                <input type="submit" value="Retornar">
            </form>
        </div>
        
    </body>
</html>
