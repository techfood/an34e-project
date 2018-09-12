package model;

import dataBase.Dbase;
import java.sql.Connection;
import java.sql.PreparedStatement;

public class Pagamento {
    
    private int idPago;
    private int idMesa;
    private float valorPago;
    private Connection conn = null;
    private Dbase db;
    private PreparedStatement ps;
    
    public Pagamento() {
    }

    public Pagamento(int idPago, int idMesa, float valorPago) {
        this.idPago = idPago;
        this.idMesa = idMesa;
        this.valorPago = valorPago;
    }
    
    public int getIdPago() {
        return idPago;
    }

    public void setIdPago(int idPago) {
        this.idPago = idPago;
    }

    public int getIdMesa() {
        return idMesa;
    }

    public void setIdMesa(int idMesa) {
        this.idMesa = idMesa;
    }

    public float getValorPago() {
        return valorPago;
    }

    public void setValorPago(float valorPago) {
        this.valorPago = valorPago;
    }
    
    
}
