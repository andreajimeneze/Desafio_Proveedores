<<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Formulario de Proveedor</title>
</head>
<body>
<h2>${supplier == null ? 'Agregar Proveedor' : 'Editar Proveedor'}</h2>
<form action="supplier?action=${supplier == null ? 'insert' : 'update'}" method="post">
    <input type="hidden" name="id" value="${supplier != null ? supplier.id : ''}">
    <label for="name">Nombre:</label>
    <input type="text" id="name" name="name" value="${supplier != null ? supplier.name : ''}"><br>
    <label for="rut">RUT:</label>
    <input type="text" id="rut" name="rut" value="${supplier != null ? supplier.rut : ''}"><br>
    <label for="address">Dirección:</label>
    <input type="text" id="address" name="address" value="${supplier != null ? supplier.address : ''}"><br>
    <label for="email">Email:</label>
    <input type="text" id="email" name="email" value="${supplier != null ? supplier.email : ''}"><br>
    <label for="phone">Teléfono:</label>
    <input type="text" id="phone" name="phone" value="${supplier != null ? supplier.phone : ''}"><br>
    <label for="contact">Contacto:</label>
    <input type="text" id="contact" name="contactName" value="${supplier != null ? supplier.contact : ''}"><br>
    <label for="phoneContact">Teléfono de contacto:</label>
    <input type="text" id="phoneContact" name="contactPhone" value="${supplier != null ? supplier.phoneContact : ''}"><br>
    <input type="submit" value="${supplier == null ? 'Agregar' : 'Actualizar'}">
</form>
<a href="supplier">Volver a la lista de proveedores</a>
</body>
</html>
