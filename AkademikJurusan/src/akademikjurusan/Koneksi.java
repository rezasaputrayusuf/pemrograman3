/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package akademikjurusan;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Reza
 */
public class Koneksi {
     private static Connection koneksi;
    public static Connection getKoneksi(){
        if(koneksi == null){
            try{
       //Koneksi MySQL             
                String host = "localhost";
                String db = "dbakademik";
                String user = "root";
                String pass = "";
                Class.forName("com.mysql.jdbc.Driver");
                koneksi = DriverManager.getConnection("jdbc:mysql://"+host+"/"+db+"?user="+user+"&password="+pass);
            }catch(Exception err1){
                System.out.println("Koneksi Error : "+err1);
            }
        }
        return koneksi;
    }
}
