<%-- 
    Document   : setfornc
    Created on : 11/05/2020, 21:53:20
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
        if (request.getParameter("setfornc") != null) {
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
            else    {
                    Fornecedor editFornecedor = new Fornecedor();
                    editFornecedor.setAttributes(razaosocial, cnpj, email, telefone, endereco);
                    DBFornecedor.getFornecedors().set(index, editFornecedor);
                    response.sendRedirect("listfornc.jsp");
                    }
        }
    } catch (Exception ex) {

      error = "Índice invalido";
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar Dados Fornecedor</title>
    </head>
    <body>
        <%@include file="..//WEB-INF/jspf/header.jspf" %>
        <h3><a href="listfornc.jsp">Voltar a Lista de Fornecedores</a></h3>
        
        <%if (error != null) {%>
        <div style="color: red">
            <%= error%>
        </div>
        <%}%>
        
        <h2>Alterar Fornecedor</h2>
        <form method="post">
            Razão Social:<br/>
            <input type="text" name="razaosocial" value="<%=fornecedor.getRazaoSocial()%>"/><br/>
            Cnpj:<br/>
            <input type="text" name="cnpj" value="<%=fornecedor.getCnpj()%>"/><br/>
            Email:<br/>
            <input type="email" name="email" value="<%=fornecedor.getEmail()%>"/><br/>
            Telefone:<br/>
            <input type="text" name="telefone" value="<%=fornecedor.getTelefone()%>"/><br/>
            Endereço:<br/>
            <input type="text" name="endereco" value="<%=fornecedor.getEndereco()%>"/><br/>
            <br/><br/>
        <input type="submit" name="setfornc" value="Alterar"/>
        </form>
    </body>
</html>
