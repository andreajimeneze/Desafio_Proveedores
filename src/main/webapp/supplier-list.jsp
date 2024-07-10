<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
    <title>Proveedores</title>
</head>
<body>
<h1>Mis proveedores</h1>
<a href="supplier?action=new">Agregue nuevo usuario</a>
<table class="table-header">
    <tr>
        <th>ID</th>
        <th>Nombre</th>
        <th>RUT</th>
        <th>Dirección</th>
        <th>Email</th>
        <th>Teléfono</th>
        <th>Contacto</th>
        <th>Teléfono de contacto</th>
    </tr>
    <!-- Iterar sobre la lista de proveedores y mostrar sus datos en la tabla -->

    <c:forEach var="supplier" items="${listSuppliers}">
        <tr>
            <td>${supplier.id}</td>
            <td>${supplier.name}</td>
            <td>${supplier.rut}</td>
            <td>${supplier.address}</td>
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
</body>
</html>