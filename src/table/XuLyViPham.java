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
 * @author COMPUTER
 */
public class XuLyViPham {

    public static void insert(String maDocGia, int phatQuaHan, int phatHongMat, int soLanViPham) {
        try (
                Connection con = KetNoiSQL.layKetNoi();
                PreparedStatement rs = con.prepareStatement("INSERT INTO XULYVIPHAM VALUES(?, ?, ?, ?)")) {
            rs.setString(1, maDocGia);
            rs.setInt(2, phatQuaHan);
            rs.setInt(3, phatHongMat);
            rs.setInt(4, soLanViPham);
            rs.executeUpdate();
            rs.close();
            con.close();
        } catch (SQLException ex) {
            java.util.logging.Logger.getLogger(XuLyViPham.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
    }

    public static Object getColumnValue(String columnName, String maDocGia) {
        Object columnValue = null;
        try (
                Connection con = KetNoiSQL.layKetNoi();
                PreparedStatement ps = con.prepareStatement("SELECT * FROM XULYVIPHAM WHERE MANGUOIDUNG = '" + maDocGia + "'");
                ResultSet rs = ps.executeQuery()) {
            rs.next();
            columnValue = rs.getObject(columnName);
            rs.close();
            ps.close();
            con.close();
        } catch (SQLException ex) {
            java.util.logging.Logger.getLogger(XuLyViPham.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        return columnValue;
    }

    public static void updateColumn(String columnName, Object columnValue, String maDocGia) {
        try (
                Connection con = KetNoiSQL.layKetNoi();
                PreparedStatement rs = con.prepareStatement("UPDATE XULYVIPHAM SET " + columnName + " = ? WHERE MANGUOIDUNG = ?")) {
            rs.setObject(1, columnValue);
            rs.setString(2, maDocGia);
            rs.executeUpdate();
            rs.close();
            con.close();
        } catch (SQLException ex) {
            java.util.logging.Logger.getLogger(XuLyViPham.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
    }

    public static void deleteAll() {
        try (
                Connection con = KetNoiSQL.layKetNoi();
                PreparedStatement rs = con.prepareStatement("DELETE FROM XULYVIPHAM")) {
            rs.executeUpdate();
            rs.close();
            con.close();
        } catch (SQLException ex) {
            java.util.logging.Logger.getLogger(XuLyViPham.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
    }
}
