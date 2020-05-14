<%-- 
    Document   : setcliente
    Created on : 11/05/2020, 21:53:20
    Author     : luccas
--%>

<%@page import="fatec.cliente.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String error = null;
    Cliente cliente = null;
    int index = -1;
    %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar</title>
    </head>
    <body>
        <h2><a href="listcliente.jsp">Usuários</a></h2>
        <h3>Alterar Cliente</h3>
        <form method="post">
            Nome:<br/>
            <input type="text" name="name" value="<%=cliente.getNome()%>"/><br/>
            CPF:<br/>
            <input type="text" name="cpf" value="<%=cliente.getCpf()%>"/><br/>
            RG:<br/>
            <input type="text" name="rg" value="<%=cliente.getRg()%>"/>
            E-mail:<br/>
            <input type="email" name="email" value="<%=cliente.getEmail()%>"/><br/>
            Telefone:<br/>
            <input type="tel" name="tel" value="<%=cliente.getTelefone()%>"/>
            Endereço:<br/>
            <input type="text" name="endereco" value="<%=cliente.getEndereco()%>"/>
            <input type="submit" name="set" value="Alterar"/>
        </form>
    </body>
</html>
