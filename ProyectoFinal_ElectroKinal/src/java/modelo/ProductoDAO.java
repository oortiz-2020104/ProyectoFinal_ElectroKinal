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

public class ProductoDAO {
  
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    
    int resp;
    
    public List listar() {
        String sql = "select * from Producto";
        List<Producto> listaProducto = new ArrayList<>();
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while (rs.next()) {                
                Producto pd = new Producto();
                pd.setCodigoProducto(rs.getInt(1));
                pd.setNombreProducto(rs.getString(2));
                pd.setPrecioProducto(rs.getDouble(3));
                pd.setStock(rs.getInt(4));
                pd.setEstado(rs.getString(5));
                listaProducto.add(pd);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listaProducto;
    }
}
