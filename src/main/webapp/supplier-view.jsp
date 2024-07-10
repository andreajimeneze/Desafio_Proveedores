<%--
  Created by IntelliJ IDEA.
  User: andre
  Date: 08-07-2024
  Time: 19:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Detalle Proveedor</title>
</head>
<body>
<h2>Detalle Proveedor</h2>

<p>ID : ${supplier.id}</p>
<p>Nombre: ${supplier.name}</p>
<p>RUT: ${supplier.rut}</p>
<p>Dirección: ${supplier.address}</p>
<p>Email: ${supplier.email}</p>
<p>Teléfono: ${supplier.phone}</p>
<p>Contacto: ${supplier.contactName}</p>
<p>Tel. Contacto: ${supplier.contactPhone}</p>

<a href="supplier">Volver a la lista de proveedores</a>
</body>
</html>
