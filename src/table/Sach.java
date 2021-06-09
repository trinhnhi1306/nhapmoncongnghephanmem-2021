/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package table;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.JTextArea;
import ketnoi.KetNoiSQL;

/**
 *
 * @author COMPUTER
 */
public class Sach {
    public static void updateColumn(String columnName, Object columnValue, String maSach) {
        try (
                Connection con = KetNoiSQL.layKetNoi();
                PreparedStatement rs = con.prepareStatement("UPDATE SACH SET " + columnName + " = ? WHERE MASACH = ?")) {
            rs.setObject(1, columnValue);
            rs.setString(2, maSach);
            rs.executeUpdate();
        } catch (SQLException ex) {
            java.util.logging.Logger.getLogger(Sach.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
    }
    
    public static Object getColumnValue(String columnName, String maSach) {
        Object columnValue = null;
        try (
                Connection con = KetNoiSQL.layKetNoi();
                PreparedStatement ps = con.prepareStatement("SELECT * FROM SACH WHERE MASACH = '" + maSach + "'");
                ResultSet rs = ps.executeQuery()) {
            rs.next();
            columnValue = rs.getObject(columnName);
        } catch (SQLException ex) {
            java.util.logging.Logger.getLogger(Sach.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        return columnValue;
    }
    
    public static void aggregate(String aggregateQuery, JTextArea ten, JTextArea soLuong) {
        String t = "";
        String sl = "";
        try (
                Connection con = KetNoiSQL.layKetNoi();
                PreparedStatement ps = con.prepareStatement(aggregateQuery);
                ResultSet rs = ps.executeQuery()) {
            while(rs.next()){
                t += rs.getString(1) + "\n";
                sl += rs.getString(2) + "\n";
            }
            ten.setText(t);
            soLuong.setText(sl);
        } catch (SQLException ex) {
            java.util.logging.Logger.getLogger(Sach.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
    }
}
