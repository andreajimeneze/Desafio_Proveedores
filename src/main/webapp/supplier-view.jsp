<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="ISO-8859-1">
    <title>Detalle Proveedor</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
</head>
<body>

    <h2 class="text-center my-4">Detalle Proveedor</h2>
    <div class="container d-flex justify-content-center">
        <div class="card" style="width: 18rem;">
            <div class="card-body">
                <p>ID : ${supplier.id}</p>
                <p>Nombre: ${supplier.name}</p>
                <p>RUT: ${supplier.rut}</p>
                <p>Dirección: ${supplier.address}</p>
                <p>Email: ${supplier.email}</p>
                <p>Teléfono: ${supplier.phone}</p>
                <p>Contacto: ${supplier.contactName}</p>
                <p>Tel. Contacto: ${supplier.contactPhone}</p>
            </div>
        </div>
    </div>
<div class="d-flex justify-content-end me-3">
    <a href="supplier" class="btn btn-outline-success"><i class="bi bi-arrow-left-circle"> Volver</i></a>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
