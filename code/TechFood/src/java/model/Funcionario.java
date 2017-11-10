package model;

import dataBase.Dbase;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Funcionario {
   private int idFunc;
   private String nomeFunc;
   private String cpfFunc;
   private String cargoFunc;
   private String senhaFunc;
   private String ruaFunc;
   private String cidadeFunc;
   private String cepFunc;
   private String foneFunc;
   private Connection conn = null;
   private Dbase db;
   private PreparedStatement ps;

    public Funcionario(){
    }
   
    public Funcionario(String cpf, String senha){
       this.cpfFunc = cpf;
       this.senhaFunc = senha;
    }

    public Funcionario(int idFunc, String nomeFunc, String cpfFunc, String cargoFunc, String senhaFunc, String ruaFunc, String cidadeFunc, String cepFunc, String foneFunc) {
        this.idFunc = idFunc;
        this.nomeFunc = nomeFunc;
        this.cpfFunc = cpfFunc;
        this.cargoFunc = cargoFunc;
        this.senhaFunc = senhaFunc;
        this.ruaFunc = ruaFunc;
        this.cidadeFunc = cidadeFunc;
        this.cepFunc = cepFunc;
        this.foneFunc = foneFunc;
    }

    
    public boolean autentica(Funcionario user) throws SQLException {

        boolean ok = false;
        Funcionario resultado = null;
        
        db = new Dbase();
        conn = db.getConnection();
        String sql = "select cpf_Funcionario, senha_Funcionario from funcionario;";
        ps = conn.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        
        while (rs.next()) {
                resultado = new Funcionario(rs.getString("cpf_Funcionario"),rs.getString("senha_Funcionario"));
                if (resultado.cpfFunc.equals(user.cpfFunc) && resultado.senhaFunc.equals(user.senhaFunc)) {
                    ok = true;
                    break;
                }
         }
        conn.close();
        db.closeConnection();
        return ok;
        }
       
    public Funcionario procura(String cpf) throws SQLException {
        
        db = new Dbase();
        conn = db.getConnection();
        Funcionario user = null;
        String sql = "select * from funcionario;";
        ps = conn.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();

        while (rs.next()) {
            if (rs.getString("cpf_Funcionario").equals(cpf)){
                
                user = new Funcionario(rs.getInt("id_Funcionario"), rs.getString("nome_Funcionario"), rs.getString("cpf_Funcionario"), rs.getString("cargo_Funcionario"),
                        rs.getString("senha_Funcionario"),rs.getString("rua_Funcionario"),
                        rs.getString("cidade_Funcionario"),rs.getString("cep_Funcionario"),rs.getString("fone_Funcionario"));
                break;
            }
        }
        conn.close();
        db.closeConnection();
        return user;
    }

    public boolean gravar(Funcionario user) throws SQLException {

        db = new Dbase();
        conn = db.getConnection();
        boolean ok = false;
        String sql = "insert into funcionario(nome_Funcionario,cpf_Funcionario,cargo_Funcionario,"
                + "senha_Funcionario,rua_Funcionario,cidade_Funcionario,cep_Funcionario,fone_Funcionario) "
                + "values(?,?,?,?,?,?,?,?);";
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, user.getNomeFunc());
            ps.setString(2, user.getCpfFunc());
            ps.setString(3, user.getCargoFunc());
            ps.setString(4, user.getSenhaFunc());
            ps.setString(5, user.getRuaFunc());
            ps.setString(6, user.getCidadeFunc());
            ps.setString(7, user.getCepFunc());
            ps.setString(8, user.getFoneFunc());
            ps.execute();
            ok = true;
            ps.close();
        } catch (SQLException ex) {
            Logger.getLogger(Funcionario.class.getName()).log(Level.SEVERE, null, ex);
        }
        conn.close();
        db.closeConnection();
        return ok;
    }
    
    public String getRuaFunc() {
        return ruaFunc;
    }

    public void setRuaFunc(String ruaFunc) {
        this.ruaFunc = ruaFunc;
    }

    public String getCidadeFunc() {
        return cidadeFunc;
    }

    public void setCidadeFunc(String cidadeFunc) {
        this.cidadeFunc = cidadeFunc;
    }

    public String getCepFunc() {
        return cepFunc;
    }

    public void setCepFunc(String cepFunc) {
        this.cepFunc = cepFunc;
    }

    public String getFoneFunc() {
        return foneFunc;
    }

    public void setFoneFunc(String foneFunc) {
        this.foneFunc = foneFunc;
    }
    
    public int getIdFunc() {
        return idFunc;
    }

    public void setIdFunc(int idFunc) {
        this.idFunc = idFunc;
    }

    public String getNomeFunc() {
        return nomeFunc;
    }

    public void setNomeFunc(String nomeFunc) {
        this.nomeFunc = nomeFunc;
    }

    public String getCpfFunc() {
        return cpfFunc;
    }
    
   // public Endereco getEndereco(){
    //    return endereco;
   // }

    public void setCpfFunc(String cpfFunc) {
        this.cpfFunc = cpfFunc;
    }

    public String getCargoFunc() {
        return cargoFunc;
    }

    public void setCargoFunc(String cargoFunc) {
        this.cargoFunc = cargoFunc;
    }

    public String getSenhaFunc() {
        return senhaFunc;
    }

    public void setSenhaFunc(String senhaFunc) {
        this.senhaFunc = senhaFunc;
    }
    
    //public void setEndereco(Endereco endereco){
   //     this.endereco = endereco;
    //}
}