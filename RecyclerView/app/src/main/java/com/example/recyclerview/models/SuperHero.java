package com.example.recyclerview.models;

public class SuperHero {

    private String nome;
    private String mascara;
    private int imageId;

    public SuperHero(String nome, int imagem) {
        this.nome = nome;
        this.imageId = imageId;

    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getMascara() {
        return mascara;
    }

    public void setMascara(String mascara) {
        this.mascara = mascara;
    }

    public int getImageId() {
        return imageId;
    }

    public void setImageId(int imageId) {
        this.imageId = imageId;
    }

    @Override
    public String toString() {
        return "SuperHero{" +
                "nome='" + nome + '\'' +
                ", mascara='" + mascara + '\'' +
                ", imageId=" + imageId +
                '}';
    }
}
