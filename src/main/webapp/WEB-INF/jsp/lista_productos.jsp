<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Inventario</title>
    <link href="../../webjars/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../../webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>
</head>
<body>
<div style="background-color:#337ab7;height:50px;"></div>
<div class="container">
    <h2>Productos registrados</h2>

    <spring:url value="/producto/borrarTodo" var="BorrarTodo" />
    <a class="btn btn-primary" href="${BorrarTodo }" role="button" >Delete All Productos</a>

    <spring:url value="/producto/contar" var="contar" />
    <a class="btn btn-primary" href="${contar }" role="button" >Contar</a>

    <p>cantidad de productos: ${cantidad}</p>

    <table class="table table-striped">
        <thead>
        <th scope="row">#ID</th>
        <th scope="row">Nombre</th>
        <th scope="row">Precio</th>
        <th scope="row">Stock</th>
        <th scope="row">Update</th>
        <th scope="row">Delete</th>
        </thead>
        <tbody>
        <c:forEach items="${productoList}" var="producto" >
            <tr>
                <td>${producto.id }</td>
                <td>${producto.nombre_producto }</td>
                <td>${producto.precio_producto }</td>
                <td>${producto.stock_producto }</td>
                              <td>
                    <spring:url value="/producto/actualizarProducto/${producto.id }" var="updateURL" />
                    <a class="btn btn-primary" href="${updateURL }" role="button" >Update</a>
                </td>
                <td>
                    <spring:url value="/producto/borrarProducto/${producto.id}" var="deleteURL" />
                    <a class="btn btn-primary" href="${deleteURL }" role="button" >Delete</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <spring:url value="/producto/agregarProducto/" var="addURL" />
    <a class="btn btn-primary" href="${addURL }" role="button" >Add Producto</a>
</div>
</body>
</html>