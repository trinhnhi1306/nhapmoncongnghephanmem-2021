/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author COMPUTER
 */
public class Sach {

    private String maSach, tenSach, ngayNhap, gia, viTri, maTacGia, maNXB, maTheLoai, soLuongCo, soLuongCon;

    public Sach(String maSach, String tenSach, String ngayNhap, String gia, String vitri, String maTacGia, String maNXB, String maTheLoai, String soLuongCo, String soLuongCon) {
        this.maSach = maSach;
        this.tenSach = tenSach;
        this.ngayNhap = ngayNhap;
        this.gia = gia;
        this.viTri = vitri;
        this.maTacGia = maTacGia;
        this.maNXB = maNXB;
        this.maTheLoai = maTheLoai;
        this.soLuongCo = soLuongCo;
        this.soLuongCon = soLuongCon;
    }

    public String getMaSach() {
        return maSach;
    }

    public String getTenSach() {
        return tenSach;
    }

    public String getNgayNhap() {
        return ngayNhap;
    }

    public String getGia() {
        return gia;
    }

    public String getViTri() {
        return viTri;
    }

    public void setVitri(String vitri) {
        this.viTri = vitri;
    }

    public String getMaTacGia() {
        return maTacGia;
    }

    public void setMaTacGia(String maTacGia) {
        this.maTacGia = maTacGia;
    }

    public String getMaNXB() {
        return maNXB;
    }

    public void setMaNXB(String maNXB) {
        this.maNXB = maNXB;
    }

    public String getMaTheLoai() {
        return maTheLoai;
    }

    public void setMaTheLoai(String maTheLoai) {
        this.maTheLoai = maTheLoai;
    }

    public String getSoLuongCo() {
        return soLuongCo;
    }

    public void setSoLuongCo(String soLuongCo) {
        this.soLuongCo = soLuongCo;
    }

    public String getSoLuongCon() {
        return soLuongCon;
    }

    public void setSoLuongCon(String soLuongCon) {
        this.soLuongCon = soLuongCon;
    }
}
