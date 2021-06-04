/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package table;

import java.sql.Connection;
import java.sql.PreparedStatement;
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
        } catch (SQLException ex) {
            java.util.logging.Logger.getLogger(XuLyViPham.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
    }
}
