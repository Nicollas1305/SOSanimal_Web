<%-- 
    Document   : CadastrarAnimal
    Created on : 23/11/2020, 20:09:54
    Author     : carto
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Animal</title>
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
                <div class="header"> Cadastrar Animal </div>  
            </div>
        </div>

        <div class="formulario">
            <form method="get" action="_salvarAnimal.jsp">
                Nome: <input type="text" name="nome"><br>
                Idade: <input type="text" name="idade"><br>
                Gênero: <input type="text" name="generoAnimal"><br><br>
                <label for="tipoAnimal">Tipo do Animal:</label>
                <select name="tipoAnimal">
                    <option value="Jumento">Jumento</option>
                    <option value="Cachorro">Cachorro</option>
                    <option value="Gato">Gato</option>
                    <option value="Tartaruga">Tartaruga</option>
                    <option value="Cabra">Cabra</option>
                </select><br><br>
                ID do cliente: <input type="text" name="IDcliente"><br>
                <form method="get" action="">
                     <input type="submit" value="Buscar" name="salvar" >
                </form>
                Nome do cliente: <input type="text" name="nome"><br><br
                
                <input type="submit" value="Salvar" name="salvar" ><br>
            </form>
        </div>
    </body>
</html>
