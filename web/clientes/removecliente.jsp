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
        if(request.getParameter("removecliente")!= null){
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
        <title>Remover Cliente</title>
    </head>
    <body>
        <%@include file="..//WEB-INF/jspf/header.jspf" %>
        <h3><a href="listcliente.jsp">Voltar a Lista de Clientes</a></h3>
        <h2>Excluir <%=cliente.getNome()%>?</h2>
        
        <%if (error != null) {%>
        <div style="color: red">
            <%= error%>
        </div>
        <%}%>
        
        <form method="post">
            Nome:<br/>
            <b>"<%=cliente.getNome()%>"</b>
            <br/>
            CPF:<br/>
            <b>"<%=cliente.getCpf()%>"<b/>
            <br/>
            RG:<br/>
            <b>"<%=cliente.getRg()%>"<b/>
            <br/>
            E-mail:<br/>
            <b>"<%=cliente.getEmail()%>"</b>
            <br/>
            Telefone:<br/>
            <b>"<%=cliente.getTelefone()%>"<b/>
            <br/>
            Endereço:<br/>
            <b>"<%=cliente.getEndereco()%>"</b>             
            <br/>
            <br/>

            <input type="submit" name="removecliente" value="Excluir"/> 
        </form>       
    </body>
</html>
