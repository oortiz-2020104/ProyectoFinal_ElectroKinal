<%-- 
    Document   : Producto
    Created on : 13/09/2021, 05:24:21 PM
    Author     : Harim Palma
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">        
        <title>Producto</title>
    </head>
    <body>
        <div class="d-flex">
            <div class="card col">
                <div class="card-body" >
                    <form action="Controlador?menu=Producto" method="POST">
                        <div class="form-group">
                            <label>Nombre:</label>
                            <input type="text" value="${producto.getNombreProducto()}" name="txtNombreProducto" class="form-control">
                        </div>
                        <div class="form-group">
                            <label style="margin-top: 10px;">Precio:</label>
                            <input type="text" value="${producto.getPrecioProducto()}" name="txtPrecioProducto" class="form-control">
                        </div>
                        <div class="form-group">
                            <label style="margin-top: 10px;">Stock:</label>
                            <input type="text" value="${producto.getStock()}" name="txtStock" class="form-control">
                        </div>
                        <div class="form-group">
                            <label style="margin-top: 10px;">Estado:</label>
                            <input type="text" value="${producto.getEstado()}" name="txtEstado" class="form-control">
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
                            <th>Nombre</th>
                            <th>Precio</th>
                            <th>Stock</th>
                            <th>Estado</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="producto" items="${productos}">
                            <tr>
                                <td>${producto.getCodigoProducto()}</td>    
                                <td>${producto.getNombreProducto()}</td>    
                                <td>${producto.getPrecioProducto()}</td>    
                                <td>${producto.getStock()}</td>    
                                <td>${producto.getEstado()}</td>    
                                <td>
                                    <a class="btn btn-outline-warning" href="Controlador?menu=Producto&accion=Editar&codigoProducto=${producto.getCodigoProducto()}">Editar</a>
                                    <a class="btn btn-outline-danger" href="Controlador?menu=Producto&accion=Eliminar&codigoProducto=${producto.getCodigoProducto()}">Eliminar</a>
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
