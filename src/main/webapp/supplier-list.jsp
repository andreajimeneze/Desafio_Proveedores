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
    <link rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
</head>
<body>
<div class="container">
    <h1 class="text-center my-4">Mis proveedores</h1>
    <a href="supplier?action=new"class="btn btn-primary my-4"><i class="bi bi-plus-circle"> Nuevo</i></a>
    <table class="table table-responsive" id="table">
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
                 <td class="d-flex flex-column gap-2">
                     <a href="supplier?action=view&id=${supplier.id}" class="btn btn-success"><i class="bi bi-info-circle-fill"></i></a>
                     <a href="supplier?action=edit&id=${supplier.id}" class="btn btn-warning"><i class="bi bi-pencil-fill"></i></a>
                     <a href="supplier?action=delete&id=${supplier.id}" class="btn btn-danger" onclick="return confirm('Está seguro?')"><i class="bi bi-trash3-fill"></i></a>
                 </td>
            </tr>
        </c:forEach>
</table>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

</body>
</html>