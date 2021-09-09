<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Cliente"%>
<%@page import="DAO.DAOCliente"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Consutar Clientes</h1>
        <%

            out.print("<table border='1'>");
            out.print("<tr>");
            out.print("<th>ID</th>");
            out.print("<th>NOME</th>");
            out.print("<th>EMAIL</th>");
            out.print("<th>EDITAR</th>");
            out.print("<th>EXCLUIR</th>");
            out.print("</tr>");
            DAOCliente cli = new DAOCliente();
            ArrayList<Cliente> lista = cli.listarClientes();
            for (int i = 0; i < lista.size(); i++) {

                out.print("<tr>");
                out.print("<td>" + lista.get(i).getId() + "</td>");
                out.print("<td>" + lista.get(i).getNome() + "</td>");
                out.print("<td>" + lista.get(i).getEmail() + "</td>");
                out.print("<td><a href = 'alterar_cliente.jspid="
                        + lista.get(i).getId()
                        + "&nome= "+lista.get(i).getNome()
                        + "&email= "+lista.get(i).getEmail()
                        + "'>CLIQUE</a></td>");
                out.print("<td>CLIQUE</td>");
                out.print("</tr>");
            }
            out.print("</table>");
        %>

    </body>
</html>
