package model;

import dataBase.Dbase;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Cardapio {
    
    private int idCard;
    private String nomeCard;
    private float precoCard;
    private String obsCard;
    private String imagemCard;
    private Connection conn = null;
    private Dbase db;
    private PreparedStatement ps;
    
    public Cardapio() {
    }

    public Cardapio(int idCard, String nomeCard, float precoCard, String obsCard, String imagemCard) {
        this.idCard = idCard;
        this.nomeCard = nomeCard;
        this.precoCard = precoCard;
        this.obsCard = obsCard;
        this.imagemCard = imagemCard;
    }

    public boolean apagarCardapio(int idCard) throws SQLException{
        boolean ok = false;
        db = new Dbase();
        conn = db.getConnection();
        String sql = ("delete from produto where id = ?;");
        
        try {
            ps= conn.prepareStatement(sql);
            ps.setInt(1, idCard);
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
    
    public boolean gravarCardapio() throws SQLException{//grava o post no banco de dados
        boolean ok = false;
        db = new Dbase();
        conn = db.getConnection();
        String sql = "insert into produto(nome_Produto,preco_Produto,observacoes,imagem) values (?,?,?,?);";
        
        try {
            ps= conn.prepareStatement(sql);
            ps.setString(1, this.getNomeCard());
            ps.setFloat(2, this.getPrecoCard());
            ps.setString(3, this.getObsCard());
            ps.setString(4, this.getImagemCard());
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
    
    public ArrayList<Cardapio> pesquisaCardapio(String termo) throws SQLException{ // faz um array list das postagens no banco
        ResultSet rs;
        ArrayList<Cardapio> obj = new ArrayList();
        db = new Dbase();
        conn = db.getConnection();
        String sql = ("select * from produto where nome_Produto like ?;");
        ps = conn.prepareStatement(sql);
        ps.setString(1, "%"+termo+"%");
        rs = ps.executeQuery();
        while(rs.next()){
            obj.add(new Cardapio(rs.getInt("id_Produto"),rs.getString("nome_Produto"),rs.getFloat("preco_Produto"),rs.getString("observacoes"),rs.getString("imagem")));
        }
        ps.close();
        conn.close();
        db.closeConnection();
        return obj;
    }
    
    public int getIdCard(){
        return this.idCard;
    }
    
    public void setIdCard(int idCard) {
        this.idCard = idCard;
    }

    public String getNomeCard() {
        return nomeCard;
    }

    public void setNomeCard(String nomeCard) {
        this.nomeCard = nomeCard;
    }

    public float getPrecoCard() {
        return precoCard;
    }

    public void setPrecoCard(float precoCard) {
        this.precoCard = precoCard;
    }

    public String getObsCard() {
        return obsCard;
    }

    public void setObsCard(String obsCard) {
        this.obsCard = obsCard;
    }

    public String getImagemCard() {
        return imagemCard;
    }

    public void setImagemCard(String imagemCard) {
        this.imagemCard = imagemCard;
    }
}
