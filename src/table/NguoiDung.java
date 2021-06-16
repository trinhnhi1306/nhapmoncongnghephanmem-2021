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
import ketnoi.KetNoiSQL;

/**
 *
 * @author Admin
 */
public class NguoiDung {

    public static Object getColumnValue(String columnName, String maNguoiDung) {
        Object columnValue = null;
        try (
                Connection con = KetNoiSQL.layKetNoi();
                PreparedStatement ps = con.prepareStatement("SELECT * FROM NGUOIDUNG WHERE MANGUOIDUNG = '" + maNguoiDung + "'");
                ResultSet rs = ps.executeQuery()) {
            rs.next();
            columnValue = rs.getObject(columnName);
            rs.close();
            ps.close();
            con.close();
        } catch (SQLException ex) {
            java.util.logging.Logger.getLogger(NguoiDung.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        return columnValue;
    }

    public static void updateColumn(String columnName, Object columnValue, String maNguoiDung) {
        try (
                Connection con = KetNoiSQL.layKetNoi();
                PreparedStatement rs = con.prepareStatement("UPDATE NGUOIDUNG SET " + columnName + " = ? WHERE MANGUOIDUNG = ?")) {
            rs.setObject(1, columnValue);
            rs.setString(2, maNguoiDung);
            rs.executeUpdate();
            rs.close();
            con.close();
        } catch (SQLException ex) {
            java.util.logging.Logger.getLogger(NguoiDung.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
    }
}
