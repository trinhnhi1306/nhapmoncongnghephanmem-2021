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
import model.DocGia;
import model.NguoiDung;

/**
 *
 * @author COMPUTER
 */
public class TableNguoiDung {
    public static ArrayList<DocGia> getDocGia() {
        ArrayList<DocGia> ds = new ArrayList<>();
        try (
                Connection con = KetNoiSQL.layKetNoi();
                PreparedStatement ps = con.prepareStatement("SELECT * FROM NGUOIDUNG WHERE MAVAITRO = 'VT01'");
                ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                DocGia docGia = new DocGia(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), 
                                           rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10), 
                                           rs.getString(11), rs.getString(12));
                ds.add(docGia);
            }
        } catch (SQLException ex) {
            java.util.logging.Logger.getLogger(TableNguoiDung.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        return ds;
    }
    
    public static ArrayList<NguoiDung> getNguoiDung(String sql) {
        ArrayList<NguoiDung> ds = new ArrayList<>();
        try (
                Connection con = KetNoiSQL.layKetNoi();
                PreparedStatement ps = con.prepareStatement(sql);
                ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                NguoiDung nguoiDung = new NguoiDung(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), 
                                                    rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10), 
                                                    rs.getString(11), rs.getString(12));
                ds.add(nguoiDung);
            }
        } catch (SQLException ex) {
            java.util.logging.Logger.getLogger(TableNguoiDung.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        return ds;
    }
    
    public static void showDocGia(JTable jTable) {
        ArrayList<DocGia> ds = getDocGia();
        DefaultTableModel dtm = (DefaultTableModel) jTable.getModel();
        dtm.setRowCount(0);
        for (DocGia dg : ds) {
            dtm.addRow(new Object[] {
                dg.getMa(),
                dg.getTen(),
                dg.getGioiTinh(),
                dg.getNgaySinh(),
                dg.getDiaChi(),
                dg.getSdt(),
                dg.getEmail(),
                dg.getNgayDangKy(),
                dg.getNgayHetHan(),
                dg.getMaLop()
            });
        }
    }
    
    public static void showNguoiDung(JTable jTable, String sql) {
        ArrayList<NguoiDung> ds = getNguoiDung(sql);
        DefaultTableModel dtm = (DefaultTableModel) jTable.getModel();
        dtm.setRowCount(0);
        for (NguoiDung nd : ds) {
            dtm.addRow(new Object[] {
                nd.getMa(),
                nd.getTen(),
                nd.getGioiTinh(),
                nd.getNgaySinh(),
                nd.getDiaChi(),
                nd.getSdt(),
                nd.getEmail(),
                nd.getNgayDangKy(),
                nd.getNgayHetHan(),
                nd.getMaLop()
            });
        }
    }
}
