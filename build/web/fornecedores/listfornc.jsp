<%-- 
    Document   : listfornc
    Created on : 11/05/2020, 21:53:09
    Author     : luccas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="fatec.fornecedor.DBFornecedor"%>
<%@page import="fatec.fornecedor.Fornecedor"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fornecedores</title>
    </head>
    <body>
        <%@include file="..//WEB-INF/jspf/header.jspf" %>
        <h2>Fornecedores</h2>
        <h3><a href="addfornc.jsp">Cadastrar Fornecedor</a></h3>
        <table border="1">
            <tr>
                <th>Razão Social</th>
                <th>CNPJ</th>
                <th>E-mail</th>
                <th>Telefone</th>
                <th>Endereço</th>
                <th>Comandos</th>
            </tr>
            
            <%for (Fornecedor fornecedor : DBFornecedor.getFornecedors()) {%>
            <tr>
                <td><%= fornecedor.getRazaoSocial()%></td>
                <td><%= fornecedor.getCnpj()%></td>
                <td><%= fornecedor.getEmail()%></td>
                <td><%= fornecedor.getTelefone()%></td>
                <td><%= fornecedor.getEndereco()%></td>
                <td>
                    <%int index = DBFornecedor.getFornecedors().indexOf(fornecedor);%>
                    <a href="setfornc.jsp?index=<%=index%>">Alterar</a>
                    <a href="removefornc.jsp?index=<%=index%>">Excluir</a>
                </td>
            </tr>
            <%}%>
        </table>           
        <h2><a href="..//index.jsp"> Menu Principal </a></h2>
    </body>
</html>
