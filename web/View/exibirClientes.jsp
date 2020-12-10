<%-- 
    Document   : ExibirClientes
    Created on : 21/11/2020, 19:01:22
    Author     : carto
--%>

<%@page import="Entity.Animal"%>
<%@page import="Controller.AnimalJpaController"%>
<%@page import="java.util.List"%>
<%@page import="Entity.Cliente"%>
<%@page import="Controller.JpaUtil"%>
<%@page import="Controller.ClienteJpaController"%>
<%@page import="javax.persistence.TypedQuery"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ClienteJpaController clienteDAO = new ClienteJpaController(JpaUtil.getEmf());
    List<Cliente> clientes = clienteDAO.findClienteEntities();

    
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Exibir Cadastros </title>
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

        <table>
            <%
                for (Cliente c : clientes) {
            %>
            <tr>
                <td><%= c.getId()%></td>
                <td><%= c.getNomeCliente()%></td>
                <td><%= c.getCpf()%></td>
                <td><%= c.getTelefone()%></td>
                <td><%= c.getEndereco()%></td>
                <td><%= c.getGenero()%></td>
                <td><form method="get" action="exibirAnimais.jsp">
                        <input type="hidden" value="<%=c.getId()%>" name="id">
                        <input type="submit" value="Animais"/>
                    </form></td>
                <td>
                    <form method="get" action="editarCliente.jsp">
                        <input type="hidden" value="<%= c.getId()%>" name="id" />
                        <input type="hidden" value="<%= c.getNomeCliente() %>" name="nomeCliente" />
                        <input type="hidden" value="<%= c.getCpf()%>" name="cpf" />
                        <input type="hidden" value="<%= c.getTelefone()%>" name="telefone" />
                        <input type="hidden" value="<%= c.getEndereco() %>" name="endereco" />
                        <input type="hidden" value="<%= c.getGenero() %>" name="genero" />
                        <input type="submit" value="Editar" />
                    </form>
                </td>
                <td>
                    <form method="get" action="_excluirCliente.jsp">
                        <input type="hidden" value="<%= c.getId()%>" name="id" />
                        <input type="hidden" value="<%= c.getNomeCliente()%>" name="nomeCliente"/>
                        <input type="submit" value="Excluir" />
                    </form>
                </td>
            </tr>
            <%
                }
            %>
            <table/>
    </body>
</html>
