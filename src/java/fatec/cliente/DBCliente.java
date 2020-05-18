/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fatec.cliente;
import java.util.ArrayList;
/**
 *
 * @author luccas
 * modificado por carlos
 */
public class DBCliente {
    private static ArrayList<Cliente> clientes;
    public static ArrayList<Cliente> getClientes(){
        if (clientes == null){
            clientes = new ArrayList<>();
            Cliente admin = new Cliente();
            admin.setAttributes("Carlos", "12312312332", "123213211", "cadu@gmail.com", "34253212", "rua araxa");
            clientes.add(admin);
            Cliente cliente = new Cliente();
            cliente.setAttributes("Eduardo", "42312312302", "023013011", "edu@gmail.com", "04500312", "rua dois");
            clientes.add(cliente);       
        }
        
        return clientes;
    }
}

