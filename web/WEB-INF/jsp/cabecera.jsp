<!---->  
<!--
<link href="assets/css/bootstrap.min.css" rel="stylesheet">
<link href="assets/css/alertify.core.css" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/assets/css/alertify.default.css" rel="stylesheet" type="text/css"/>
<script src="${pageContext.request.contextPath}/assets/js/jquery-1.12.0.min.js" typassets/ce="text/javascript"></script>
<script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/alertify.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/assets/js/jquery.dataTables.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/assets/js/dataTables.bootstrap.min.js" type="text/javascript"></script> 
<link href="assets/css/prueba.css" rel="stylesheet">
-->
<!--<link th:href="@{/css/prueba.css}" href="/css/prueba.css" rel="stylesheet" type="text/css">-->
<!--
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
<link th:href="@{/assets/css/prueba.css}" rel="stylesheet">
<link th:href="@{/assets/css/bootstrap.min.css}" rel="stylesheet">
<link th:href="@{/assets/css/alertify.core.css}" rel="stylesheet">
<script th:src="@{/assets/js/jquery-1.12.0.min.js}" type=text/javascript></script>
<script th:src="@{/assets/js/bootstrap.min.js}" type=text/javascript></script>
<script th:src="@{/assets/js/alertify.js}" type=text/javascript></script>
<script th:src="@{/assets/js/jquery.dataTables.min.js}" type=text/javascript></script>
<script th:src="@{/assets/js/js/dataTables.bootstrap.min.js}" type=text/javascript></script>
-->
<!--<title>Crud</title>  descargar el cdn de boosttrap https://getbootstrap.com/docs/4.2/getting-started/introduction/ css  para mejor presentaciòn -->
<!--<meta http-equiv="X-UA-Comptible" content="IE=edge">-->
<!--        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%> 

<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="description" content="" />
<meta name="author" content="Pablo Torregrosa Simbaqueva" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<spring:url value="/assets/css/alertify.core.css" var="alertifyCore" />
<spring:url value="/assets/css/alertify.default.css" var="alertifyDefault" />
<spring:url value="/assets/css/bootstrap.min.css" var="bootstrap" />
<spring:url value="/assets/css/dataTables.bootstrap.min.css" var="dataTables" />
<spring:url value="/assets/css/prueba.css" var="prueba" />


<link type="text/css" rel="stylesheet" href="${alertifyCore}" />
<link type="text/css" rel="stylesheet" href="${alertifyDefault}" />
<link type="text/css" rel="stylesheet" href="${bootstrap}" />
<link type="text/css" rel="stylesheet" href="${dataTables}" />
<link type="text/css" rel="stylesheet" href="${prueba}" />
