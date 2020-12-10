<%-- 
    Document   : exibirAnimais
    Created on : 24/11/2020, 01:03:35
    Author     : carto
--%>

<%@page import="java.util.List"%>
<%@page import="Controller.JpaUtil"%>
<%@page import="Entity.Animal"%>
<%@page import="Controller.AnimalJpaController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    AnimalJpaController animalDAO = new AnimalJpaController(JpaUtil.getEmf());
    List<Animal> animais = animalDAO.findAnimalEntities();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SOS Animal</title>
        <link rel="stylesheet" href="../Styles.css">
        <link rel="stylesheet" href="https://fontawesome.com/icons/analytics?style=light">
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
                <div class="header"> Animais </div>  
            </div>            
        </div>

        <table>
            <tr>
                <td>Nome do Animal</td>
                <td>Idade</td>
                <td>Genero</td>
                <td>Tipo do Animal</td>
                <td>ID do Cliente</td>
                <td>Nome do Cliente</td>
            </tr>
            <%
                for (Animal a : animais) {
            %>
            <tr>
                <td><%=a.getNome()%></td>
                <td><%=a.getIdade()%></td>
                <td><%=a.getGeneroAnimal()%></td>
                <td><%=a.getTipoAnimal()%></td>
                <td><%=a.getIDcliente()%></td>
                <td><%=a.getNomeCliente()%></td>

                <td><form method="get" action="editarAnimal.jsp">
                        <input type="hidden" value="<%=a.getNome()%>" name="nome">
                        <input type="hidden" value="<%=a.getIdade()%>" name="idade">
                        <input type="hidden" value="<%=a.getGeneroAnimal()%>" name="generoAnimal">
                        <input type="hidden" value="<%=a.getTipoAnimal()%>" name="tipoAnimal">
                        <input type="hidden" value="<%=a.getIDcliente()%>" name="iDcliente">
                        <input type="hidden" value="<%=a.getNomeCliente()%>" name="nomeCliente">
                        <input type="submit" value="Editar" />
                    </form>
                </td>
                <td>
                    <form method="get" action="_excluirAnimal.jsp">
                        <input type="hidden" value="<%= a.getNome()%>" name="nome" />
                        <input type="submit" value="Excluir" />
                    </form>
                </td>
            </tr>
            <%
                }
            %>
        </table>
    </body>
</html>