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

    public int agregar(Producto pd) {
        String sql = "insert into Producto (nombreProducto, precioProducto, stock, estado) values (?, ?, ?, ?)";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);

            ps.setString(1, pd.getNombreProducto());
            ps.setDouble(2, pd.getPrecioProducto());
            ps.setInt(3, pd.getStock());
            ps.setString(4, pd.getEstado());
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return resp;
    }

    public Producto listarCodigoProducto(int id) {
        Producto pd = new Producto();
        String sql = "select * from Producto where codigoProducto =" + id;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                pd.setNombreProducto(rs.getString(2));
                pd.setPrecioProducto(rs.getDouble(3));
                pd.setStock(rs.getInt(4));
                pd.setEstado(rs.getString(5));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return pd;
    }

    public int actualizar(Producto pd) {
        String sql = "update Producto set nombreProducto = ?, precioProducto = ?, stock = ?, estado = ? where codigoProducto = ?";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);

            ps.setString(1, pd.getNombreProducto());
            ps.setDouble(2, pd.getPrecioProducto());
            ps.setInt(3, pd.getStock());
            ps.setString(4, pd.getEstado());
            ps.setInt(5, pd.getCodigoProducto());
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return resp;
    }

    public void eliminar(int id) {
        String sql = "delete from Producto where codigoProducto =" + id;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
