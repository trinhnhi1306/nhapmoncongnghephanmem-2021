/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ketnoi;
import java.sql.*;

/**
 *
 * @author Admin
 */
public class KetNoiSQL {
    /**
     * @param args the command line arguments
     */    
    
    public static Connection layKetNoi() { 
        Connection ketNoi = null;
        String uRL = "jdbc:sqlserver://;databaseName=QLTHUVIEN";
        String userName = "sa";
        String password = "123";
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            ketNoi = DriverManager.getConnection(uRL, userName, password);
            System.out.println("Ket noi CSDL thanh cong");
        } catch (ClassNotFoundException | SQLException ex) {
            System.out.println("Khong ket noi duoc voi CSDL");
        }
        return ketNoi;
    }
//    public static void main(String[] args) {
//        // TODO code application logic here
//        KetNoiSQL kn = new KetNoiSQL();
//        kn.layKetNoi();
//    }
}
