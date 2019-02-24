<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%> 
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %> <!-- para el c:forEahc-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <title>Crud</title> 
        <jsp:include page="cabecera.jsp"/>
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
            
        <jsp:include page="includejs.jsp"></jsp:include>
    </body>
</html>
