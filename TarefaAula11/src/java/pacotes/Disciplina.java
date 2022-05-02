/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pacotes;

/**
 *
 * @author Fatec
 */
public class Disciplina {
    private String sigla;
    private String nome;
    private String ementa;
    private String diaSemana;
    private String horarioAula;
    
    public Disciplina(String sigla, String nome, String ementa, String diaSemana, String horarioAula){
        this.sigla = sigla;
        this.nome = nome;
        this.ementa = ementa;
        this.diaSemana = diaSemana;
        this.horarioAula = horarioAula;
    }
    
    public String getSigla() {
        return sigla;
    }

    public void setSigla(String sigla) {
        this.sigla = sigla;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEmenta() {
        return ementa;
    }

    public void setEmenta(String ementa) {
        this.ementa = ementa;
    }

    public String getDiaSemana() {
        return diaSemana;
    }

    public void setDiaSemana(String diaSemana) {
        this.diaSemana = diaSemana;
    }

    public String getHorarioAula() {
        return horarioAula;
    }

    public void setHorarioAula(String horarioAula) {
        this.horarioAula = horarioAula;
    }
    
  
    
}
