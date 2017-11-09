package model;

public class Endereco {
    private String ruaEnde;
    private String cidadeEnde;
    private String cepEnde;
    private String foneEnde;

    public Endereco() {
    }

    public Endereco(String ruaEnde, String cidadeEnde, String cepEnde, String foneEnde) {
        this.ruaEnde = ruaEnde;
        this.cidadeEnde = cidadeEnde;
        this.cepEnde = cepEnde;
        this.foneEnde = foneEnde;
    }

    public String getRuaEnde() {
        return ruaEnde;
    }

    public void setRuaEnde(String ruaEnde) {
        this.ruaEnde = ruaEnde;
    }

    public String getCidadeEnde() {
        return cidadeEnde;
    }

    public void setCidadeEnde(String cidadeEnde) {
        this.cidadeEnde = cidadeEnde;
    }

    public String getCepEnde() {
        return cepEnde;
    }

    public void setCepEnde(String cepEnde) {
        this.cepEnde = cepEnde;
    }

    public String getFoneEnde() {
        return foneEnde;
    }

    public void setFoneEnde(String foneEnde) {
        this.foneEnde = foneEnde;
    }
    
}
