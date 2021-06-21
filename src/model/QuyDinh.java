/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import ketnoi.KetNoiSQL;

/**
 *
 * @author Apple Bee
 */
public class QuyDinh {

    private int maQuyDinh, soSachMuonToiDa, soNgayMuonToiDa, tienPhatQuaHan, tienPhatHongMat;
    private String ngayThayDoi;

    public QuyDinh() {
    }

    public QuyDinh(int maQuyDinh, int soSachMuonToiDa, int soNgayMuonToiDa, int tienPhatQuaHan, int tienPhatHongMat, String ngayThayDoi) {
        this.maQuyDinh = maQuyDinh;
        this.soSachMuonToiDa = soSachMuonToiDa;
        this.soNgayMuonToiDa = soNgayMuonToiDa;
        this.tienPhatQuaHan = tienPhatQuaHan;
        this.tienPhatHongMat = tienPhatHongMat;
        this.ngayThayDoi = ngayThayDoi;
    }

    public int getMaQuyDinh() {
        return maQuyDinh;
    }

    public void setMaQuyDinh(int maQuyDinh) {
        this.maQuyDinh = maQuyDinh;
    }

    public int getSoSachMuonToiDa() {
        return soSachMuonToiDa;
    }

    public void setSoSachMuonToiDa(int soSachMuonToiDa) {
        this.soSachMuonToiDa = soSachMuonToiDa;
    }

    public int getSoNgayMuonToiDa() {
        return soNgayMuonToiDa;
    }

    public void setSoNgayMuonToiDa(int soNgayMuonToiDa) {
        this.soNgayMuonToiDa = soNgayMuonToiDa;
    }

    public int getTienPhatQuaHan() {
        return tienPhatQuaHan;
    }

    public void setTienPhatQuaHan(int tienPhatQuaHan) {
        this.tienPhatQuaHan = tienPhatQuaHan;
    }

    public int getTienPhatHongMat() {
        return tienPhatHongMat;
    }

    public void setTienPhatHongMat(int tienPhatHongMat) {
        this.tienPhatHongMat = tienPhatHongMat;
    }

    public String getNgayThayDoi() {
        return ngayThayDoi;
    }

    public void setNgayThayDoi(String ngayThayDoi) {
        this.ngayThayDoi = ngayThayDoi;
    }

    public static QuyDinh layThongTinQuyDinh() {
        QuyDinh qd = null;
        try {
            Connection con = KetNoiSQL.layKetNoi();
            PreparedStatement ps = con.prepareStatement("SELECT TOP 1 * FROM QUYDINH ORDER BY MAQUYDINH DESC");
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                qd = new QuyDinh(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getInt(4), rs.getInt(5), rs.getString(6));
            }
            rs.close();
            ps.close();
            con.close();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return qd;
    }
}
