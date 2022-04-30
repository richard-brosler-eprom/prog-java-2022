package br.senaibauru.empregos;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConectaBD {
    public String usuario="root";
    public String senha="Sen@i2021*";
    
    public Connection Conectar() throws Exception {
        Class.forName("com.mysql.jdbc.Driver");
        String url="jdbc:mysql://localhost/empregos";
        Connection conn=DriverManager.getConnection(url,usuario,senha);
        return conn;
    }
}
