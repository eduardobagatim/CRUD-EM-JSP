<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <h1>Excluir Cliente</h1>
        <form method="post" action="executar_excluir.jsp">
            <label for="id">ID</label><br>
            <input type="text" name="id" value="<%=request.getParameter("id") %>" readonly/><br>
            <label>NOME</label><br>
            <input type="text" name="nome" value="<%=request.getParameter("nome") %>" readonly/><br>
            <input type="submit" vale="EXCLUIR"/>
        </form>
    </body>
</html>
