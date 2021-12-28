package br.com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexaoDAO {
    
    public Connection conexaoBD() throws ClassNotFoundException {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/sistemafuncionarios?user=root&password=";
            Connection connection = DriverManager.getConnection(url);
            System.out.println("Conectado ao banco de dados.");
            return connection;
            
        } catch (SQLException erro){
            throw new RuntimeException(erro);
        } 
    }
}
