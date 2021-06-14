/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hash;

import java.math.BigInteger;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 *
 * @author COMPUTER
 */
public class MD5 {
    public static String encrypt(String password) {
        String hashCode = "";
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            byte[] messageDigest = md.digest(password.getBytes());
            
            // Convert byte array into signum representation
            BigInteger temp = new BigInteger(1, messageDigest); 
            
            // Convert messageDigest into hex value
            hashCode = temp.toString(16);
            while (hashCode.length() < 32) {
                hashCode = "0" + hashCode;
            }
        } catch (NoSuchAlgorithmException e) {
            System.out.println("Hash algorithm not found!");
        }
        return "0x" + hashCode;
    }
    
    public static void main(String[] args) {
        System.out.println(encrypt("admin"));
        System.out.println(table.NguoiDung.getColumnValue("MATKHAU", "admin1"));
    }
}
