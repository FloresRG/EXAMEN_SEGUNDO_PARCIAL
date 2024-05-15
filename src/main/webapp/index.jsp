<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de Estudiantes</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container">
    <div class="text-center">
        <h1>Segundo Parcial TEM 742</h1>
    </div>

    <div class="row mt-3 mb-3">
        <div class="col text-center">
            <p>Nombre: RONALD GUTIERREZ FLORES</p>
        </div>
    </div>

    <div class="row mb-3">
        <div class="col text-center">
            <p>Carnet: 9996011</p>
        </div>
    </div>

    <div class="row mb-3">
        <div class="col">
            <a href="inicio?action=add" class="btn btn-primary">Nuevo</a>
        </div>
    </div>

    <table class="table table-bordered">
        <thead>
            <tr>
                <th>Id</th>
                <th>Nombre</th>
                <th>Apellidos</th>
                <th>Seminarios</th>
                <th>Confirmado</th>
                <th>Fecha de Inscripción</th>
                <th>Acciones</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="estudiante" items="${estudiantes}">
                <tr>
                    <td>${estudiante.id}</td>
                    <td>${estudiante.nombre}</td>
                    <td>${estudiante.apellidos}</td>
                    <td>${estudiante.sseminarios}</td>
                    <td>
                        <input type="checkbox" name="confirmado" <c:if test="${estudiante.confirmado}">checked</c:if> />
                    </td>
                    <td>${estudiante.fechaInscripcion}</td>
                    <td>
                        <a href="inicio?action=edit&id=${estudiante.id}" class="btn btn-warning">Editar</a>
                        <a href="inicio?action=delete&id=${estudiante.id}" class="btn btn-danger" onclick="return(confirm('¿Estás seguro de eliminar este estudiante?'))">Eliminar</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
