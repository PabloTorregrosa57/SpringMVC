<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="continer mt-4 col-lg-4">
            <div class="card border-info">
                <div class="card-header bg-info">
                    <h4>Editar Registro</h4>                    
                </div>
                <div class="card-body">
                    <form method="POST">
                        <label>CODIGO</label>
                      <!--  <input type="text" name="codigo" class="form-control" value="${lista[0].codigo_editorial}" readonly="true" ><br>-->
                        <input type="hidden" name="codigo" value="${lista[0].codigo_editorial}" />
                        <label>NOMBRE</label>
                        <input type="text" name="nombre" class="form-control" value="${lista[0].nombre_editorial}"><br> 
                        <label>CONTACTO</label>
                        <input type="text" name="contacto" class="form-control" value="${lista[0].contacto}"><br>
                        <label>TELEFONO</label>
                        <input type="text" name="telefono" class="form-control" value="${lista[0].telefono}"><br>
                        <input type="submit" value="Actualizar" class="btn btn-success">
                        <a href="${pageContext.request.contextPath}/editorial/listar">Regresar</a>
                    </form>
                </div>
            </div>            
        </div>
    </body>
</html>
