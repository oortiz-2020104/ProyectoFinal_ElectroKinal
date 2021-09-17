<%-- 
    Document   : index
    Created on : 10/09/2021, 02:14:13 PM
    Author     : 
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    </head>
    <body style="background-color:  #706F6F">
        <div class="container mt-4 col-lg-4" style="padding-top: 100px">
            <div class="card col-sm-10">
                <div class="card-body">
                    <form class="form-sign" action="Validar" method="POST">
                        <div class="form-group text-center">
                            <h3>Iniciar sesión</h3>
                            <img src="img/Logo_ElectroKinal_Letra.png" width="130" height="130"/><br>
                        </div>
                        <div class="form-group" style="margin: 10px">
                            <label>Usuario</label>
                            <input type="text" name="txtUser" class="form-control">
                        </div>
                        <div class="form-group" style="margin: 10px">
                            <label>Contraseña</label>
                            <input type="password" name="txtPass" class="form-control">
                        </div>
                        <div class="d-grid gap-2">
                            <input type="submit" name="accion" value="Ingresar" class="btn btn-primary btn-block" style="margin: 10px;">
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
    </body>
</html>