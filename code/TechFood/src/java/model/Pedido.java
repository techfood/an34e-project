package model;

import dataBase.Dbase;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Pedido {
    
    private int idPedido;
    private int idCardapio;
    private int idMesa;
    private int idFunc;
    private int quantidade;
    private String obser;
    private Connection conn = null;
    private Dbase db;
    private PreparedStatement ps;
    
     public Pedido() {
    }

    public Pedido(int idPedido, int idCardapio, int idMesa, int idFunc, int quantidade, String obser) {
        this.idPedido = idPedido;
        this.idCardapio = idCardapio;
        this.idMesa = idMesa;
        this.idFunc = idFunc;
        this.quantidade = quantidade;
        this.obser = obser;
    }

    public boolean pedidoInsere() throws SQLException{//grava o post no banco de dados
        boolean ok = false;
        db = new Dbase();
        conn = db.getConnection();
        String sql = "insert into pedido (fk_id_produto,fk_id_mesa,fk_id_funcionario,observacoes) values(?,?,?,?);";
        
        try {
            ps= conn.prepareStatement(sql);
            //ps.setInt(1, this.getIdMesa());
            ps.setInt(1, this.getIdCardapio());
            ps.setInt(2, this.getIdMesa());
            ps.setInt(3, this.getIdFunc());
            //ps.setInt(5, this.getQuantidade());
            ps.setString(4, this.getObser());
            ps.execute();
            ok = true;
            ps.close();
        } catch (SQLException ex) {
            Logger.getLogger(Cardapio.class.getName()).log(Level.SEVERE, null, ex);
        }
        conn.close();
        db.closeConnection();
        return ok;
    }
    
    public boolean pedidoDeleta() throws SQLException{
        boolean ok = false;
        db = new Dbase();
        conn = db.getConnection();
        String sql = ("delete from pedido where id_pedido = ?;");
        
        try {
            ps= conn.prepareStatement(sql);
            ps.setInt(1, this.getIdPedido());
            ps.execute();
            ok = true;
            ps.close();
        } catch (SQLException ex) {
            Logger.getLogger(Cardapio.class.getName()).log(Level.SEVERE, null, ex);
        }
        conn.close();
        db.closeConnection();
        return ok;
    }
    
    public ArrayList<Pedido> pedidoLista() throws SQLException{
        ResultSet rs;
        ArrayList<Pedido> obj = new ArrayList();
        db = new Dbase();
        conn = db.getConnection();
        String sql = ("select * from pedido order by id_pedido desc;");
        ps = conn.prepareStatement(sql);
        rs = ps.executeQuery();
        while(rs.next()){
            obj.add(new Pedido(rs.getInt("id_pedido"),rs.getInt("fk_id_produto"),rs.getInt("fk_id_mesa"),rs.getInt("fk_id_funcionario"),rs.getInt("quant_pedido"),rs.getString("observacoes")));
        }
        ps.close();
        conn.close();
        db.closeConnection();
        return obj;
    }
    
    public int getIdPedido() {
        return idPedido;
    }

    public void setIdPedido(int idPedido) {
        this.idPedido = idPedido;
    }

    public int getIdCardapio() {
        return idCardapio;
    }

    public void setIdCardapio(int idCardapio) {
        this.idCardapio = idCardapio;
    }

    public int getIdMesa() {
        return idMesa;
    }

    public void setIdMesa(int idMesa) {
        this.idMesa = idMesa;
    }

    public int getIdFunc() {
        return idFunc;
    }

    public void setIdFunc(int idFunc) {
        this.idFunc = idFunc;
    }

    public int getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(int quantidade) {
        this.quantidade = quantidade;
    }

    public String getObser() {
        return obser;
    }

    public void setObser(String obser) {
        this.obser = obser;
    }
    
}
