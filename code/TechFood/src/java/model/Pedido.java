package model;

import dataBase.Dbase;
import java.sql.Connection;
import java.sql.PreparedStatement;

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

    public Pedido(int idPedido, int idCardapio, int idMesa, int idFunc, int quantidade, String obser, Dbase db, PreparedStatement ps) {
        this.idPedido = idPedido;
        this.idCardapio = idCardapio;
        this.idMesa = idMesa;
        this.idFunc = idFunc;
        this.quantidade = quantidade;
        this.obser = obser;
        this.db = db;
        this.ps = ps;
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
