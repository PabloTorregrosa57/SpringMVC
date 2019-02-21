<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %> <!-- para el c:forEahc-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
        <title>Crud</title> <!-- descargar el cdn de boosttrap https://getbootstrap.com/docs/4.2/getting-started/introduction/ css  para mejor presentaciòn -->
    </head>

    <body>
        <div class="container mt-4">
            <div class="card border-info">
                <div class="card-header bg-info text-white">
                    <a class="btn btn-light" href="${pageContext.request.contextPath}/editorial/agregar">Nuevo Regisdtro</a>
                </div>
                <div class="card-body">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>CODIGO</th>
                                <th>NOMBRE</th>
                                <th>CONTACTO</th>
                                <th>TELEFONO</th>
                                <th>OPERACIONES</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="dato" items="${lista}">
                                <tr>
                                    <td>${dato.codigo_editorial}</td>
                                    <td>${dato.nombre_editorial}</td>
                                    <td>${dato.contacto}</td>
                                    <td>${dato.telefono}</td>
                                    <td>
                                        <a href="${pageContext.request.contextPath}/editorial/editar?codigo=${dato.codigo_editorial}" class="btn btn-warning">Editar</a>
                                        <a href="${pageContext.request.contextPath}/editorial/eliminar?codigo=${dato.codigo_editorial}" class="btn btn-danger">Eliminar</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>

        </div>
    </body>
</html>

