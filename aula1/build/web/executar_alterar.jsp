<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Cliente"%>
<%@page import="DAO.DAOCliente"%>

<%

    try {

        Cliente cli = new Cliente();
        DAOCliente cld = new DAOCliente();
        cli.setNome(request.getParameter("nome"));
        cli.setEmail(request.getParameter("email"));
        cli.setId(Integer.parseInt(request.getParameter("id")));
        cld.atualizarCliente(cli);
        response.sendRedirect("consultar_clientes.jsp");

    } catch (Exception erro) {
        throw new RuntimeException("Erro executar alterar" + erro);
    }

%>
