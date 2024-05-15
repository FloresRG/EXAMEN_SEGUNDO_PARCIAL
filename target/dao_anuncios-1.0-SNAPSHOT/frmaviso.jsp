<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Formulario de Estudiante</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        h1 {
            text-align: center;
            margin-top: 50px;
        }
        form {
            width: 400px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }
        table {
            width: 100%;
        }
        table tr {
            margin-bottom: 15px;
        }
        table td {
            padding: 8px;
        }
        input[type="text"],
        input[type="number"],
        input[type="submit"],
        input[type="checkbox"] {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<h1>
    <c:if test="${estudiante.id == 0}">Nuevo</c:if>
    <c:if test="${estudiante.id != 0}">Editar</c:if>
    estudiante
</h1>

<form action="inicio" method="post">
    <input type="hidden" name="id" value="${estudiante.id}" />
    <table>
        <tr>
            <td>Nombre:</td>
            <td><input type="text" name="nombre" value="${estudiante.nombre}"/></td>
        </tr>
        <tr>
            <td>Apellidos:</td>
            <td><input type="text" name="apellidos" value="${estudiante.apellidos}"/></td>
        </tr>
        <tr>
            <td>Seminarios:</td>
            <td><input type="number" name="sseminarios" value="${estudiante.sseminarios}"/></td>
        </tr>
        <tr>
            <td>Confirmado:</td>
            <td><input type="checkbox" name="confirmado" value="true" <c:if test="${estudiante.confirmado}">checked</c:if> /></td>
        </tr>
        <tr>
            <td>Fecha de Inscripción:</td>
            <td><input type="text" name="fecha_inscripcion" value="${estudiante.fechaInscripcion}"/></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="Guardar" /></td>
        </tr>
    </table>
</form>
</body>
</html>
