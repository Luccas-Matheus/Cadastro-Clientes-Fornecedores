/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fatec.fornecedor;
import java.util.ArrayList;
/**
 *
 * @author luccas
 * modificado por carlos
 */
public class DBFornecedor {
    private static ArrayList<Fornecedor> fornecedors;
    public static ArrayList<Fornecedor> getFornecedors(){
        if (fornecedors == null){
            fornecedors = new ArrayList<>();
            Fornecedor admin = new Fornecedor();
            admin.setAttributes("express", "47.508.411/1020-72", "rota@express.com", "34713522", "rua oito um");
            fornecedors.add(admin);
            Fornecedor fornecedor = new Fornecedor();
            fornecedor.setAttributes("tradicional", "48.507.411/1020-73", "rota@tradicional.com", "31743522", "rua oito dois");
            fornecedors.add(fornecedor);       
        }
        
        return fornecedors;
    }
}
