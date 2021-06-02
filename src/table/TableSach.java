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
import java.util.ArrayList;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;
import ketnoi.KetNoiSQL;
import model.Sach;
import view.QuanLySach;

/**
 *
 * @author COMPUTER
 */
public class TableSach {
    public static ArrayList<Sach> getSach(String sql) {
        ArrayList<Sach> ds = new ArrayList<>();
        try (
                Connection con = KetNoiSQL.layKetNoi();
                PreparedStatement ps = con.prepareStatement(sql);
                ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                Sach sach = new Sach(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), 
                                     rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10));
                ds.add(sach);
            }
        } catch (SQLException ex) {
            java.util.logging.Logger.getLogger(QuanLySach.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        return ds;
    }
    
    public static void showSach(JTable jTable, String sql) {
        ArrayList<Sach> ds = getSach(sql);
        DefaultTableModel dtm = (DefaultTableModel) jTable.getModel();
        dtm.setRowCount(0);
        for (Sach sach : ds) {
            dtm.addRow(new Object[] {
                sach.getMaSach(),
                sach.getTenSach(),
                sach.getNgayNhap(),
                sach.getGia(),
                sach.getViTri(),
                sach.getMaTacGia(),
                sach.getMaNXB(),
                sach.getMaTheLoai(),
                sach.getSoLuongCo(),
                sach.getSoLuongCon()
            });
        }
    }
}
