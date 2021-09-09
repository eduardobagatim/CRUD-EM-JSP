package DAO;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexao {

    public Connection getConexao() {
        try {
            Class.forName("org.apache.derby.jdbc.ClientDriver");// "com.mysql.jdbc.Driver"
            return DriverManager.getConnection("jdbc:derby://localhost/bdTreino","eduardo","123");

        } catch (Exception erro) {
            throw new RuntimeException("Erro classe conexão: ", erro);
        }
    }
}
