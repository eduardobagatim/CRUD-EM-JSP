<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <h1>Cadastro de Clientes</h1>
        <form method="post" action="executar_alterar.jsp">
            <label for="id">ID</label><br>
            <input type="text" name="id" value="<%=request.getParameter("id") %>" readonly/><br>
            <label>NOME</label><br>
            <input type="text" name="nome" value="<%=request.getParameter("nome") %>" required/><br>
            <label>EMAIL</label><br>
            <input type="text" name="email" value="<%=request.getParameter("email") %>" required/><br><br>
            <input type="submit" vale="ATUALIZAR"/>
        </form>
    </body>
</html>
