<%-- 
    Document   : removecliente
    Created on : 11/05/2020, 21:52:49
    Author     : luccas
    Modificado : Anna
--%>

<%@page import="fatec.cliente.DBCliente"%>
<%@page import="fatec.cliente.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String error = null;
    Cliente cliente = null;
    int index = -1;
    try{
        index = Integer.parseInt(request.getParameter("index"));
        cliente = DBCliente.getClientes().get(index);
        if(request.getParameter("remove")!= null){
            DBCliente.getClientes().remove(index);
            response.sendRedirect("listcliente.jsp");
    }
    }catch(Exception ex){
        error = "Índice inválido";
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remover</title>
    </head>
    <body>
        <h2><a href="listcliente.jsp">Usuários</a></h2>
        <h3>Remover Usuário</h3>
    </body>
</html>
