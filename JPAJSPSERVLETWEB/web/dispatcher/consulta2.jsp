
<%@page import="entidades.Cliente"%>
<%@page import="factoria2.Consulta2"%>
<%@page import="java.util.ArrayList"%>
<%@page import="factoria2.Consulta1"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <br><center>
        <p>Estas logeado como <strong style="color:red">${logeado}</strong></p> <br><br>

        Busque el cliente que quiera actualizar<br>
        <form action="http://localhost:8080/JPAJSPSERVLETWEB/Consultas" method="post"><br>
            Introduzca ID<input type="number" name="numId2">
            <input type="submit" name="btoEnviar3" value="Buscar Cliente">
        </form>
    </center>
    <br><br><br>
    <%
        HttpSession misession = request.getSession(true);
        String logeado = (String) misession.getAttribute("logeado");
        if( request.getParameter("btoEnviar3")!= null ){
            Cliente cliente = (Cliente) request.getAttribute("EnvioDatos2");
            out.println("ID: " + cliente.getIdCliente() + "<br>IdVendedor" + cliente.getIdVendedor().getIdVendedor() + "<br>Empresa:" + cliente.getEmpresa());
        }
    %> 
    
</body>
</html>