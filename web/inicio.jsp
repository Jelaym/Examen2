<%-- 
    Document   : inicio
    Created on : 6/11/2017, 08:25:42 AM
    Author     : David Madrigal Buendía
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Inicio </title>
    </head>
    <body>
        <%
            HttpSession sesion= request.getSession();
            String usuario= (String) sesion.getAttribute("usuario");
        %>
        <h1> Bienvenido <%=usuario%>! </h1>
        <p> Sumatoria! </p>
        <form method="post" action="ServletSumatoria">
            Escribe el primer numero: <input type="text" placeholder="nume" name="nume"/>
            <br/>
            Escribe el sergundo numero: <input type="text" placeholder="numero" name="numero"/>
            <br/>
            <input type="submit" value="Sumar"/>
        </form>
        
        <input type="button" value="Salir" onclick="location.replace('ServletSalir');"/>
    </body>
</html>
