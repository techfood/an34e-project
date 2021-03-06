package model;

import dataBase.Dbase;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Mesa {
    
    private int idMesa;
    private int lugaresMesa;
    private boolean ocupada;
    private boolean reserva;
    private Connection conn = null;
    private Dbase db;
    private PreparedStatement ps;

    public Mesa() {
    }

    public Mesa(int idMesa, int lugaresMesa) {
        this.idMesa = idMesa;
        this.lugaresMesa = lugaresMesa;
    }
    
    public boolean mesaInsere(Mesa cria) throws SQLException{//grava o post no banco de dados
        boolean ok = false;
        db = new Dbase();
        conn = db.getConnection();
        String sql = "insert into mesa(id_Mesa,lugares_Mesa) values (?,?);"
                + "insert into mesaCliente (fk_id_mesa) values(?);";
        
        try {
            ps= conn.prepareStatement(sql);
            ps.setInt(1, cria.getIdMesa());
            ps.setInt(2, cria.getLugaresMesa());
            ps.setInt(3, cria.getIdMesa());
            ps.execute();
            ok = true;
            ps.close();
        } catch (SQLException ex) {
            Logger.getLogger(Mesa.class.getName()).log(Level.SEVERE, null, ex);
        }
        conn.close();
        db.closeConnection();
        return ok;
    }

    public boolean mesaDeleta(Mesa deleta) throws SQLException{
        boolean ok = false;
        db = new Dbase();
        conn = db.getConnection();
        String sql = ("delete from mesa where id_Mesa = ?;");
        
        try {
            ps= conn.prepareStatement(sql);
            ps.setInt(1, deleta.getIdMesa());
            ps.execute();
            ok = true;
            ps.close();
        } catch (SQLException ex) {
            Logger.getLogger(Mesa.class.getName()).log(Level.SEVERE, null, ex);
        }
        conn.close();
        db.closeConnection();
        return ok;
    }
    
    public int getIdMesa() {
        return idMesa;
    }

    public void setIdMesa(int idMesa) {
        this.idMesa = idMesa;
    }

    public int getLugaresMesa() {
        return lugaresMesa;
    }

    public void setLugaresMesa(int lugaresMesa) {
        this.lugaresMesa = lugaresMesa;
    }

    public boolean isOcupada() {
        return ocupada;
    }

    public void setOcupada(boolean ocupada) {
        this.ocupada = ocupada;
    }

    public boolean isReserva() {
        return reserva;
    }

    public void setReserva(boolean reserva) {
        this.reserva = reserva;
    }
    
}
