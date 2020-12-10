<%-- 
    Document   : _finalCadastroCliente
    Created on : 24/11/2020, 19:18:46
    Author     : carto
--%>

<%@page import="Controller.JpaUtil"%>
<%@page import="Controller.ClienteJpaController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ClienteJpaController clienteDAO = new ClienteJpaController(JpaUtil.getEmf());
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Cliente</title>
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

            <jsp:useBean id="cliente" scope="request" class="Entity.Cliente" />
            <jsp:setProperty name="cliente" property="id"/>
            <jsp:setProperty name="cliente" property="nomeCliente"/>
            <jsp:setProperty name="cliente" property="cpf"/>
            <jsp:setProperty name="cliente" property="telefone"/>
            <jsp:setProperty name="cliente" property="endereco"/>
            <jsp:setProperty name="cliente" property="genero"/>

            <%
                clienteDAO.create(cliente);
            %>
            <div class="formulario">
                <p>-Cliente Cadastrado!</p><br><br>   
                <p>ID: <jsp:getProperty name="cliente" property="id"/></p>
                <p>NOME: <jsp:getProperty name="cliente" property="nomeCliente"/></p>
                <form action="exibirClientes.jsp">
                    <input type="submit" value="Retornar">
                </form>
            </div>
        </div>
    </body>
</html>
