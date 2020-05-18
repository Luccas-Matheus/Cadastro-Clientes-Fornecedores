<%-- 
    Document   : addfornc
    Created on : 11/05/2020, 21:52:27
    Author     : luccas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="fatec.fornecedor.DBFornecedor"%>
<%@page import="fatec.fornecedor.Fornecedor"%>

<!DOCTYPE html>
<%
    String error = null;
    if (request.getParameter("addfornc") != null) {
        String razaosocial = request.getParameter("razaosocial");
        String cnpj = request.getParameter("cnpj");
        String email = request.getParameter("email");
        String telefone = request.getParameter("telefone");
        String endereco = request.getParameter("endereco");
        if (razaosocial.isEmpty()) error = "Razão Social não pode ser nulo!";
        else if (cnpj.isEmpty()) error = "CNPJ não pode ser nulo!";
        else if (email.isEmpty()) error = "E-mail não pode ser nulo!";
        else if (telefone.isEmpty()) error = "Telefone não pode ser nulo!";
        else if (endereco.isEmpty()) error = "Endereço não pode ser nulo!";
        else {
                Fornecedor fornecedor = new Fornecedor();
                fornecedor.setAttributes(razaosocial, cnpj, email, telefone, endereco);
                DBFornecedor.getFornecedors().add(fornecedor);
                response.sendRedirect("listfornc.jsp");
            }
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Novo Fornecedor</title>
    </head>
    <body>
        <%@include file="..//WEB-INF/jspf/header.jspf" %>
        <h4><a href="listfornc.jsp">Voltar a lista de Fornecedores</a></h4>
        <h2>Cadastrar Fornecedor</h2>
        
        <%if (error != null) {%>
        <div style="color: red">
            <%= error%>
        </div>
        <%}%>
        
        <form method="post">
            Razão Social:<br/>
            <input type="text" name="razaosocial"/><br/>
            Cnpj:<br/>
            <input type="text" name="cnpj"/><br/>
            Email:<br/>
            <input type="email" name="email"/><br/>
            Telefone:<br/>
            <input type="text" name="telefone"/><br/>
            Endereço:<br/>
            <input type="text" name="endereco"/><br/>
            <br/><br/>
         <input type="submit" name="addfornc" value="Adicionar"/>
         <input type="reset" name="cancel" value="Apagar Campos" />
         </form>
    </body>
</html>
