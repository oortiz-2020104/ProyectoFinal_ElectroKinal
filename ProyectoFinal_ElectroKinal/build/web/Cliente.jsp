<%-- 
    Document   : Cliente
    Created on : 13/09/2021, 06:09:56 PM
    Author     : Daniel Juárez
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">        
        <title>Clientes</title>
    </head>
    <body>
        <div class="d-flex">
            <div class="card col">
                <div class="card-body" >
                    <form action="Controlador?menu=Cliente" method="POST">
                        <div class="form-group">
                            <label>DPI:</label>
                            <input type="text" value="${cliente.getDPICliente()}" name="txtDPICliente" class="form-control">
                        </div>
                        <div class="form-group">
                            <label style="margin-top: 10px;">Nombres:</label>
                            <input type="text" value="${cliente.getNombresCliente()}" name="txtNombresCliente" class="form-control">
                        </div>
                        <div class="form-group">
                            <label style="margin-top: 10px;">Dirección:</label>
                            <input type="text" value="${cliente.getDireccionCliente()}" name="txtDireccionCliente" class="form-control">
                        </div>
                        <div class="form-group">
                            <label style="margin-top: 10px;">Estado:</label>
                            <input type="text" value="${cliente.getEstado()}" name="txtEstado" class="form-control">
                        </div>

                        <input type="submit" name="accion" value="Agregar" class="btn btn-outline-primary" style="margin-top: 15px">
                        <input type="submit" name="accion" value="Actualizar" class="btn btn-outline-danger" style="margin-top: 15px">
                    </form>
                </div>
            </div>
            <div class="col-sm-8" style="margin-left: 15px">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>Código</th>
                            <th>DPI</th>
                            <th>Nombres</th>
                            <th>Dirección</th>
                            <th>Estado</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="cliente" items="${clientes}">
                            <tr>
                                <td>${cliente.getCodigoCliente()}</td>    
                                <td>${cliente.getDPICliente()}</td>    
                                <td>${cliente.getNombresCliente()}</td>    
                                <td>${cliente.getDireccionCliente()}</td>    
                                <td>${cliente.getEstado()}</td>    
                                <td>
                                    <a class="btn btn-outline-warning" href="Controlador?menu=Cliente&accion=Editar&codigoCliente=${cliente.getCodigoCliente()}">Editar</a>
                                    <a class="btn btn-outline-danger" href="Controlador?menu=Cliente&accion=Eliminar&codigoCliente=${cliente.getCodigoCliente()}">Eliminar</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
    </body>
</html>
