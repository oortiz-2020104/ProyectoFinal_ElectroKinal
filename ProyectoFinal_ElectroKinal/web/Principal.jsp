<%-- 
    Document   : Principal
    Created on : 10/09/2021, 02:50:26 PM
    Author     : santo
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">        
        <title>PÃ¡gina principal</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">Inicio</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="Controlador?menu=Empleado&accion=Listar" target="myFrame">Empleados</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Controlador?menu=Producto&accion=Listar" target="myFrame">Productos</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Controlador?menu=Cliente&accion=Listar" target="myFrame">Clientes</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Controlador?menu=NuevaVenta&accion=default" target="myFrame">Nueva venta</a> 
                        </li>
                    </ul>
                </div>
            </div>

            <div class="btn-group dropstart" style="padding-right: 15px; ">
                <button class="btn btn-dark dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                    ${usuario.getNombresEmpleado()}
                </button>
                <ul class="dropdown-menu text-center" aria-labelledby="dropdownMenuButton1">
                    <li><a class="dropdown-item" href="#">Usuario: ${usuario.getUsuario()}</a></li>
                    <li><a class="dropdown-item" href="#">${usuario.getUsuario()}@gmail.com</a></li>
                    <li><hr class="dropdown-divider"></li>
                    <form action="Validar" method="POST">
                        <button name="accion" value="Salir" class="dropdown-item" href="#">Salir</button>
                    </form>
                </ul>
            </div>   
        </nav>
        <div class="m-4">
            <iframe name="myFrame" style="height: 645px; width: 100%;"></iframe>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
    </body>
</html>