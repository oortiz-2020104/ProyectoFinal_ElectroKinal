<%-- 
    Document   : NuevaVenta
    Created on : 16/09/2021, 11:12:06 PM
    Author     : byron
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">        
        <title>Nueva Venta</title>
    </head>
    <body>
        <div class="d-flex">
            <div class="card col">
                <div class="card-body" >
                    <form action="Controlador?menu=NuevaVenta" method="POST">
                        <div class="form-group">
                            <label>Datos del cliente:</label>
                            <div class="input-group mb-3">
                                <input type="text" name="txtCodigoCliente" value="${cliente.getDPICliente()}" class="form-control" placeholder="Codigo" aria-describedby="button-addon2">
                                <button type="submit" name="accion" value="BuscarCliente" style="margin-right: 10px" class="btn btn-outline-primary" id="button-addon2">Buscar</button>
                                <input type="text" name="txtNombresCliente" value="${cliente.getNombresCliente()}" class="form-control" placeholder="Cliente" disabled>
                            </div>

                            <label>Datos del producto:</label>
                            <div class="input-group mb-3">
                                <input type="text" name="txtCodigoProducto" value="${producto.getCodigoProducto()}" class="form-control" placeholder="Codigo" aria-describedby="button-addon2">
                                <button type="submit" name="accion" value="BuscarProducto" style="margin-right: 10px" class="btn btn-outline-primary" id="button-addon2">Buscar</button>
                                <input type="text" name="txtNombreProducto" value="${producto.getNombreProducto()}" class="form-control" placeholder="Producto">
                            </div>

                            <div class="input-group mb-3">
                                <input type="text" name="txtPrecio" value="${producto.getPrecioProducto()}" class="form-control" placeholder="Q00.00">
                                <input type="text" name="txtCantidad" value="1" class="form-control" placeholder="Cantidad" style="margin-left: 10px">
                                <input type="text" name="txtStock" value="${producto.getStock()}" class="form-control" placeholder="Stock" disabled>
                            </div>
                        </div>
                        <button type="submit" name="accion" value="Agregar" class="btn btn-outline-primary" style="margin-top: 15px">Agregar producto</button>
                    </form>
                </div>
            </div>
            <div class="col-sm-8" style="margin-left: 15px">
                <div class="card">
                    <div class="card-body">
                        <div class="d-flex col-sm-6 ml-auto">
                            <input type="text" name="txtNumeroSerie" class="form-control" placeholder="N°. serie" style="width: 15rem">
                        </div>
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th>Número</th>
                                    <th>Código</th>
                                    <th>Descripción</th>
                                    <th>Precio</th>
                                    <th>Cantidad</th>
                                    <th>Subtotal</th>
                                    <th>Acciones</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="list" items="${lista}">
                                    <tr>
                                        <td>${list.getItem()}</td>    
                                        <td>${list.getCodigoProducto()}</td>    
                                        <td>${list.getDescripcionProducto()}</td>    
                                        <td>${list.getPrecio()}</td>    
                                        <td>${list.getCantidad()}</td>    
                                        <td>${list.getSubTotal()}</td>    
                                        <td>
                                            <a class="btn btn-outline-warning" href="#">Editar</a>
                                            <a class="btn btn-outline-danger" href="#">Eliminar</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <div class="card-footer d-flex">
                        <div class="col-sm-8 ml-auto">
                            <input type="submit" name="accion" value="Cancelar" class="btn btn-outline-danger">
                        </div>
                        <div class="col-sm-4">
                            <input type="text" name="txtTotal" value="Q.${totalPagar}" class="form-control" placeholder="Subtotal" disabled>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
    </body>
</html>
