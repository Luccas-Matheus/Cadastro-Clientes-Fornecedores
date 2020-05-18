<%-- 
    Document   : addcliente
    Created on : 11/05/2020, 21:52:27
    Author     : luccas
    Modificado : Anna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="fatec.cliente.DBCliente"%>
<%@page import="fatec.cliente.Cliente"%>

<!DOCTYPE html>
<%
    String error = null;
    if(request.getParameter("addcliente")!= null){
        String nome = request.getParameter("nome");
        String cpf= request.getParameter("cpf");
        String rg = request.getParameter("rg");
        String email= request.getParameter("email");
        String telefone= request.getParameter("telefone");
        String endereco= request.getParameter("endereco");
        if(nome.isEmpty()) error = "Nome não pode ser nulo";
        else if(cpf.isEmpty()) error = "CPF não pode ser nulo";
        else if(rg.isEmpty()) error = "RG não pode ser nulo";
        else if(email.isEmpty()) error = "E-mail não pode ser nulo";
        else if (telefone.isEmpty()) error = "Telefone não pode ser nulo!";
        else if (endereco.isEmpty()) error = "Endereço não pode ser nulo!";
        else {
                Cliente cliente = new Cliente();
                cliente.setAttributes(nome, cpf, rg, email, telefone, endereco);
                DBCliente.getClientes().add(cliente);
                response.sendRedirect("listcliente.jsp");
            }
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Novo Cliente </title>
    </head>
    <body>
         <h2><a href="listcliente.jsp">Clientes</a></h2>
         <h3>Cadastrar Novo Cliente</h3>
         <%if (error != null) {%>
         <div style="color: red">
            <%= error%>
         </div>
         <%}%>
         <form method="post">
            Nome:<br/>
            <input type="text" name="nome"/><br/>
            CPF:<br/>
            <input type="text" name="cpf"/><br/>
            RG:<br/>
            <input type="text" name="rg"/><br/>
            E-mail:<br/>
            <input type="email" name="email"/><br/>
            Telefone:<br/>
            <input type="tel" name="telefone"/><br/>
            Endereço:<br/>
            <input type="text" name="endereco"/><br/>
             <br/><br/>
            <input type="submit" name="add" value="Adicionar"/>
        </form>
    </body>
</html>
