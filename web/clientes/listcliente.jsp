<%-- 
    Document   : listcliente
    Created on : 11/05/2020, 21:53:09
    Author     : luccas
    Modificado : Anna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="fatec.cliente.DBCliente"%>
<%@page import="fatec.cliente.Cliente"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cliente</title>
    </head>
    <body>
        <%@include file="..//WEB-INF/jspf/header.jspf" %>
        <h2>Lista de Clientes</h2>
        <h3><a href="addcliente.jsp">Cadastrar Cliente</a></h3>
        <table border="1">
            <tr>
                <th>Nome</th>
                <th>CPF</th>
                <th>RG</th>
                <th>E-mail</th>
                <th>Telefone</th>
                <th>Endereço</th>
                <th>Comandos</th>
            </tr>
            
            <%for (Cliente cliente : DBCliente.getClientes()){%>
            <tr>
                <td><%= cliente.getNome()%></td>
                <td><%= cliente.getCpf()%></td>
                <td><%= cliente.getRg()%></td>
                <td><%= cliente.getEmail()%></td>
                <td><%= cliente.getTelefone()%></td>
                <td><%= cliente.getEndereco()%></td>
                <td>
                    <%int index = DBCliente.getClientes().indexOf(cliente);%>
                    <a href="setcliente.jsp?index=<%=index%>">Alterar</a>
                    <a href="removecliente.jsp?index=<%=index%>">Excluir</a>
                </td>
            </tr>
            <%}%>
            </table>
            <h2><a href="..//index.jsp"> Menu Principal </a></h2>
    </body>
    
</html>
