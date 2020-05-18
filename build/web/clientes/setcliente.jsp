<%-- 
    Document   : setcliente
    Created on : 11/05/2020, 21:53:20
    Author     : luccas
    Modificado: Anna
--%>

<%@page import="fatec.cliente.Cliente"%>
<%@page import="fatec.cliente.DBCliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String error = null;
    Cliente cliente = null;
    int index = -1;
    try {
        index = Integer.parseInt(request.getParameter("index"));
        cliente = DBCliente.getClientes().get(index);
        if (request.getParameter("setcliente") != null) {
        String nome = request.getParameter("nome");
        String cpf = request.getParameter("cpf");
        String rg = request.getParameter("rg");
        String email = request.getParameter("email");
        String telefone = request.getParameter("telefone");
        String endereco = request.getParameter("endereco");
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
    }catch (Exception ex) {

      error = "Índice invalido";
   
    }
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar</title>
    </head>
    <body>
        <h2><a href="listcliente.jsp">Clientes</a></h2>
        <h3>Alterar Cliente</h3>
        <form method="post">
            Nome:<br/>
            <input type="text" name="nome" value="<%=cliente.getNome()%>"/><br/>
            CPF:<br/>
            <input type="text" name="cpf" value="<%=cliente.getCpf()%>"/><br/>
            RG:<br/>
            <input type="text" name="rg" value="<%=cliente.getRg()%>"/>
            E-mail:<br/>
            <input type="email" name="email" value="<%=cliente.getEmail()%>"/><br/>
            Telefone:<br/>
            <input type="tel" name="telefone" value="<%=cliente.getTelefone()%>"/>
            Endereço:<br/>
            <input type="text" name="endereco" value="<%=cliente.getEndereco()%>"/>
            <input type="submit" name="set" value="Alterar"/>
        </form>
    </body>
</html>
