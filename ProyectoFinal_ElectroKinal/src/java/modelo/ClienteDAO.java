package modelo;

/**
 *
 * @author linar
 */

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ClienteDAO {
    
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int resp;

    public List listar() {
        String sql = "select * from Cliente";
        List<Cliente> listaCliente = new ArrayList<>();
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Cliente em = new Cliente();
                em.setCodigoCliente(rs.getInt(1));
                em.setDPICliente(rs.getString(2));
                em.setNombresCliente(rs.getString(3));
                em.setDireccionCliente(rs.getString(4));
                em.setEstado(rs.getString(5));
                listaCliente.add(em);
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("No se puedo establecer la conexión");
        }

        return listaCliente;
    }
}
