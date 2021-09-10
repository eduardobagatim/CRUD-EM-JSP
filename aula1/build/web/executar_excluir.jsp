<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.DAOCliente" %>

<%

    try{
        DAOCliente cld = new DAOCliente();
        cld.excluirCliente(Integer.parseInt(request.getParameter("id")));
        out.print("Cliente Excluido!");
        out.print("<meta http-equiv='refresh' content='2, url=consultar_clientes.jsp'>");
    }catch(Exception erro){
        throw new RuntimeException("Erro Executar excluir" + erro);
    }

%>