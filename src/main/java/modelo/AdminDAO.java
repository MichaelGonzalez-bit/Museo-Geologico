/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author 57320
 */
public class AdminDAO {
    
    PreparedStatement ps;
    ResultSet rs;
    conexion c=new conexion();
    Connection con;
    
    public List listar(){
        List<Administrador>lista = new ArrayList<>();
        String sql="select * from administrador";
        try {
            con=c.conectar();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {                
                Administrador admin=new Administrador();
                admin.setId_usuario(rs.getString(1));
                admin.setNombre(rs.getString(2));
                admin.setApellido(rs.getString(3));
                admin.setEmail(rs.getString(4));
                admin.setContraseña(rs.getString(5));
                lista.add(admin);
            }
        } catch (Exception e) {
        }
        return lista;
    } 
    
}
