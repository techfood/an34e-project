package model;

public class Funcionario {
   private int idFunc;
   private String nomeFunc;
   private String cpfFunc;
   private String cargoFunc;
   private String senhaFunc;
   private Endereco endereco;

    public Funcionario(){
    }
   
    public Funcionario(String nome, String senha){
       this.nomeFunc = nome;
       this.senhaFunc = senha;
    }

    public Funcionario(int idFunc, String nomeFunc, String cpfFunc, String cargoFunc, String senhaFunc, Endereco endereco) {
        this.idFunc = idFunc;
        this.nomeFunc = nomeFunc;
        this.cpfFunc = cpfFunc;
        this.cargoFunc = cargoFunc;
        this.senhaFunc = senhaFunc;
        this.endereco = endereco;
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
    
    public Endereco getEndereco(){
        return endereco;
    }

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
    
    public void setEndereco(Endereco endereco){
        this.endereco = endereco;
    }
}