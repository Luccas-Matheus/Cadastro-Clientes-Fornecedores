<%-- 
    Document   : removefornc
    Created on : 11/05/2020, 21:52:49
    Author     : luccas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="fatec.fornecedor.DBFornecedor"%>
<%@page import="fatec.fornecedor.Fornecedor"%>

<!DOCTYPE html>
<%

    String error = null;
    Fornecedor fornecedor = null;
    int index = -1;
    try {
        index = Integer.parseInt(request.getParameter("index"));
        fornecedor = DBFornecedor.getFornecedors().get(index);
        if (request.getParameter("removefornc") != null) {
            DBFornecedor.getFornecedors().remove(index);
            response.sendRedirect("listfornc.jsp");
        }
    } catch (Exception ex) {
        error = "Índice invalido";
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remover Fornecedor</title>
    </head>
    <body>
        <%@include file="..//WEB-INF/jspf/header.jspf" %>
        <h2><a href="listfornc.jsp">Fornecedores</a></h2>
        <h3>Excluir <%=fornecedor.getRazaoSocial()%>?</h3>

        <%if (error != null) {%>
        <div style="color: red">
            <%= error%>
        </div>
        <%}%>
        
        <form method="post">
            Razão Social:<br/>
            <b>"<%=fornecedor.getRazaoSocial()%>"</b>
            <br/>
            CNPJ:<br/>
            <b>"<%=fornecedor.getCnpj()%>"<b/>
            <br/>
            E-mail:<br/>
            <b>"<%=fornecedor.getEmail()%>"</b>
            <br/>
            Telefone:<br/>
            <b>"<%=fornecedor.getTelefone()%>"<b/>
            <br/>
            Endereço:<br/>
            <b>"<%=fornecedor.getEndereco()%>"</b>             
            <br/>
            <br/>

            <input type="submit" name="removefornc" value="Excluir"/> 
        </form>       
    </body>
</html>
