<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="ISO-8859-1">
    <title>${supplier == null? "Agregar nuevo Proveedor" : "Editar Proveedor"}</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body class="container">
<h2 class="text-center">${supplier == null ? 'Agregar Proveedor' : 'Editar Proveedor'}</h2>
<form class="form my-4 p-4 rounded border row" action="supplier?action=${supplier == null ? 'insert' : 'update'}" method="post">
    <input type="hidden" name="id" value="${supplier != null ? supplier.id : ''}">
    <div class="mb-3 col-md-6 col-12">
        <label class="form-label" for="name">Nombre:</label>
        <input class="form-control" type="text" id="name" name="name" value="${supplier != null ? supplier.name : ''}" required><br>
    </div>
    <div class="mb-3 col-md-6 col-12">
        <label class="form-label" for="rut">RUT:</label>
        <input class="form-control" type="text" id="rut" name="rut" value="${supplier != null ? supplier.rut : ''}" required><br>
    </div>
    <div class="mb-3 col-md-6 col-12">
        <label class="form-label" for="address">Dirección:</label>
        <input class="form-control" type="text" id="address" name="address" value="${supplier != null ? supplier.address : ''}" required><br>
    </div>
    <div class="mb-3 col-md-6 col-12">
        <label class="form-label" for="email">Email:</label>
        <input class="form-control" type="text" id="email" name="email" value="${supplier != null ? supplier.email : ''}" required><br>
    </div>
    <div class="mb-3 col-md-6 col-12">
        <label class="form-label" for="phone">Teléfono:</label>
        <input class="form-control" type="text" id="phone" name="phone" value="${supplier != null ? supplier.phone : ''}" required><br>
    </div>
    <div class="mb-3 col-md-6 col-12">
        <label class="form-label" for="contact">Contacto:</label>
        <input class="form-control" type="text" id="contact" name="contactName" value="${supplier != null ? supplier.contactName : ''}" required><br>
    </div>
    <div class="mb-3 col-md-6 col-12">
        <label class="form-label" for="phoneContact">Teléfono de contacto:</label>
        <input class="form-control" type="text" id="phoneContact" name="contactPhone" value="${supplier != null ? supplier.contactPhone : ''}" required><br>
    </div>
    <div>
        <input type="submit" value="${supplier == null ? 'Agregar' : 'Actualizar'}" class="${supplier == null ? 'btn btn-primary' : 'btn btn-secondary'}">
    </div>
</form>
<a href="supplier" class="btn btn-success">Volver a la lista de proveedores</a>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous">
</script><script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
