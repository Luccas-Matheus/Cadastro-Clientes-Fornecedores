<%-- 
    Document   : index
    Created on : 11/05/2020, 21:41:54
    Author     : luccas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <% String PageTitle = "Indice - Controle de Cadastro"; %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><%= PageTitle %></title>
    </head>
    <body>
        <div>
          <%@include file="WEB-INF/jspf/header.jspf" %>
          <%@include file="WEB-INF/jspf/footer.jspf" %>
        </div>
        <ol type="1">
          <li><h2><a href="fornecedores/listfornc.jsp" >Controle de Fornecedores</a></h2></li>
          <li><h2><a href="#" >Controle de Clientes</a></h2></li>
        </ol>
        <br>
        <hr size="3" style="background-color: black;border-color: black"/>
    </body>
</html>