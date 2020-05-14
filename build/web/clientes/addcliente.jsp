<%-- 
    Document   : addcliente
    Created on : 11/05/2020, 21:52:27
    Author     : luccas
    Modificado : Anna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Novo Cliente </title>
    </head>
    <body>
         <h2><a href="list.jsp">Usuários</a></h2>
         <h3>Cadastrar Novo Cliente</h3>
         <form method="post">
            Nome:<br/>
            <input type="text" name="name"/><br/>
            CPF:<br/>
            <input type="text" name="cpf">
            RG:<br/>
            <input type="text" name="rg">
            E-mail:<br/>
            <input type="email" name="email"/><br/>
            Telefone:<br/>
            <input type="tel" name="telefone"/>
            Endreço:<br/>
            <input type="text" name="endereco">
            <input type="submit" name="add" value="Adicionar"/>
        </form>
    </body>
</html>
