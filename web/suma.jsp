<%-- 
    Document   : suma
    Created on : 6/11/2017, 08:48:32 AM
    Author     : David Madrigal Buendía
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resultado</title>
    </head>
    <body>
        <%
            HttpSession sesion= request.getSession();
            String suma= (String) sesion.getAttribute("suma");
        %>
        <h1> El resultado de la suma es: <%=suma%> </h1>
        <p> Sumatoria! </p>
        
        <input type="button" value="Volver a sumar" onclick="location.replace('inicio.jsp');"/>
        <input type="button" value="Salir" onclick="location.replace('ServletSalir');"/>
    </body>
</html>
