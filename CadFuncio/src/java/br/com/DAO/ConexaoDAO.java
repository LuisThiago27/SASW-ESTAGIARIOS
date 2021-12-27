package br.com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexaoDAO {
    
    
    public Connection conexaoBD() {
        try {
            String url = "jdbc:mysql://localhost:3306/sistemafuncionarios?user=root&password=";
            Connection connection = DriverManager.getConnection(url);
            System.out.println("Connected to Database.");
            return connection;
            
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    
    
    
    /*public Connection conexaoBD() throws ClassNotFoundException{
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql//localhost:3306/sistemafuncionarios?user=root&password=";
            con = DriverManager.getConnection(url);
            
        } catch (SQLException e) {
            
        }
        return con;
    }*/
}
