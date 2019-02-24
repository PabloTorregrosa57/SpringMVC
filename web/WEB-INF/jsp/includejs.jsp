<%-- 
    Document   : includejs
    Created on : 22/02/2019, 10:50:13 PM
    Author     : juandiego
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%> 

<spring:url value="/assets/js/jquery-1.12.0.min.js" var="jquery" />
<spring:url value="/assets/js/alertify.js" var="alertify" />
<spring:url value="/assets/js/bootstrap.min.js" var="bootstrap" />
<spring:url value="/assets/js/jquery.dataTables.min.js" var="jqueryDataTables" />
<spring:url value="/assets/js/dataTables.bootstrap.min.js" var="dataTables" />

<script type="text/javascript" src="${jquery}"></script>
<script type="text/javascript" src="${alertify}" ></script>
<script type="text/javascript" src="${bootstrap}" ></script>
<script type="text/javascript" src="${jqueryDataTables}" ></script>
<script type="text/javascript" src="${dataTables}" ></script>