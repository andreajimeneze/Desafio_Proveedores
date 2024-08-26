<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>


<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="ISO-8859-1">
    <title>Proveedores</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<h1>Mis proveedores</h1>
<a href="supplier?action=new">Agregue nuevo usuario</a>
<table class="table" id="table">
    <tr>
        <th scope="col">ID</th>
        <th scope="col">Nombre</th>
        <th scope="col">RUT</th>
        <th scope="col">Dirección</th>
        <th scope="col">Email</th>
        <th scope="col">Teléfono</th>
        <th scope="col">Contacto</th>
        <th scope="col">Teléfono de contacto</th>
        <th scope="col">Acciones</th>
    </tr>
    <!-- Iterar sobre la lista de proveedores y mostrar sus datos en la tabla -->

    <c:forEach var="supplier" items="${listSuppliers}">
        <tr>
            <td>${supplier.id}</td>
            <td>${supplier.name}</td>
            <td>${supplier.rut}</td>
            <td>${supplier.address}</td>
            <td>${supplier.email}</td>
            <td>${supplier.phone}</td>
            <td>${supplier.contactName}</td>
            <td>${supplier.contactPhone}</td>
             <td>
                 <a href="supplier?action=view&id=${supplier.id}">Vista usuario</a>
                 <a href="supplier?action=edit&id=${supplier.id}">Edite usuario</a>
                 <a href="supplier?action=delete&id=${supplier.id}" onclick="return confirm('Está seguro?')">Elimine usuario</a>
             </td>
        </tr>
    </c:forEach>
</table>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

</body>
</html>