<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Home</title>
  <link rel='stylesheet' href='//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css'>
  <link rel="stylesheet" href="estilos/style.css">
</head>
<body>
<header>
     <%
        String email = (String) session.getAttribute("usuario");
        if (email == null){
            response.sendRedirect("usuarioNaoLogado.html");
        }
    %>
    <nav class="navbar navbar-expand navbar-dark bg-primary">
        <div class="container-fluid">
            <a href="#menu-toggle" id="menu-toggle" class="navbar-brand"><span class="navbar-toggler-icon"></span></a>   
            <div class="sidebar-brand"> <a href="#">Sistema de Funcion�rios</a> </div>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample02" aria-controls="navbarsExample02" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarsExample02">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active"> 
                        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a> 
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</header>

<div id="wrapper" class="toggled">
    <!-- Sidebar -->
    <div id="sidebar-wrapper">
        <ul class="sidebar-nav">
            <li> <a href="departamento.html">Departamento</a> </li>
            <li> <a href="#">Funcionario</a> </li>
            <li> <a href="#">Folha de Pagamento</a> </li>
        </ul>
    </div> <!-- /#sidebar-wrapper -->

    <!-- Page Content -->
    <div id="page-content-wrapper">
        <div class="container-fluid">
            <h1>P�gina Principal</h1>
            <p>Selecione uma op��o no menu lateral para gerenciar os dados do sistema.</p>
        </div>
    </div> <!-- /#page-content-wrapper -->
</div> <!-- /#wrapper -->

<script src='//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
<script src='//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js'></script>
<script  src="scripts/script.js"></script>
</body>
</html>
