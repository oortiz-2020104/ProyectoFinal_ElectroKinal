package config;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexion {

    Connection conexion;

    public Connection Conexion() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/DBElectroKinal?useSSL=false", "root", "admin");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conexion;
    }
}
