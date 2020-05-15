/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fatec.fornecedor;

/**
 *
 * @author luccas
 * modificado por carlos
 */
public class Fornecedor {
    public String razaoSocial, cnpj, email, telefone, endereco;
     public void setAttributes(){
         this.setRazaoSocial(razaoSocial);
         this.setCnpj(cnpj);
         this.setEmail(email);
         this.setTelefone(telefone);
         this.setEndereco(endereco);
     }

    public String getRazaoSocial() {
        return razaoSocial;
    }

    public void setRazaoSocial(String razaoSocial) {
        this.razaoSocial = razaoSocial;
    }

    public String getCnpj() {
        return cnpj;
    }

    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }
  
    }

