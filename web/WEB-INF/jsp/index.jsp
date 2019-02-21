<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%> 
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %> <!-- para el c:forEahc-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html xmlns:th="http://www.thymeleaf.org">
    <head>
        <jsp:include page="cabecera.jsp"/>

<!--        <link href="prueba.css" rel="stylesheet">    
-->
<!--        <link href="prueba.css" rel="stylesheet">    
        <title>Crud</title> <!-- descargar el cdn de boosttrap https://getbootstrap.com/docs/4.2/getting-started/introduction/ css  para mejor presentaciòn -->
<!--        <link href="prueba.css" rel="stylesheet">    
        <meta http-equiv="X-UA-Comptible" content="IE=edge"> -->
        <!--        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
        -->
        <meta name="viewpot" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

    </head>

    <body>
        <jsp:include page="menu.jsp"></jsp:include>

            <div class="container mt-4">
                <div class="card border-info">
                    <div class="card-header bg-info text-white">
                        <p class="prueba">pageContext.request.contextPath: [${pageContext.request.contextPath}]</p><br>
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
                                        <a href="editorial/editar?codigo=${dato.codigo_editorial}" class="btn btn-warning">Editar</a>
                                        <a href="editorial/eliminar?codigo=${dato.codigo_editorial}" class="btn btn-danger">Eliminar</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
            <jsp:include page="footer.jsp"></jsp:include>
        </div>
    </body>
</html>
