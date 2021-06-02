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

    private String maSach, tenSach, ngayNhap, gia, viTri, tacGia, nxb, theLoai, soLuongCo, soLuongCon;

    public Sach() {
    }

    public Sach(String maSach, String tenSach, String ngayNhap, String gia, String viTri, String tacGia, String nxb, String theLoai, String soLuongCo, String soLuongCon) {
        this.maSach = maSach;
        this.tenSach = tenSach;
        this.ngayNhap = ngayNhap;
        this.gia = gia;
        this.viTri = viTri;
        this.tacGia = tacGia;
        this.nxb = nxb;
        this.theLoai = theLoai;
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

    public String getTacGia() {
        return tacGia;
    }

    public String getNxb() {
        return nxb;
    }

    public String getTheLoai() {
        return theLoai;
    }

    public String getSoLuongCo() {
        return soLuongCo;
    }

    public String getSoLuongCon() {
        return soLuongCon;
    }

    public void setMaSach(String maSach) {
        this.maSach = maSach;
    }

    public void setTenSach(String tenSach) {
        this.tenSach = tenSach;
    }

    public void setNgayNhap(String ngayNhap) {
        this.ngayNhap = ngayNhap;
    }

    public void setGia(String gia) {
        this.gia = gia;
    }

    public void setViTri(String viTri) {
        this.viTri = viTri;
    }

    public void setTacGia(String tacGia) {
        this.tacGia = tacGia;
    }

    public void setNxb(String nxb) {
        this.nxb = nxb;
    }

    public void setTheLoai(String theLoai) {
        this.theLoai = theLoai;
    }

    public void setSoLuongCo(String soLuongCo) {
        this.soLuongCo = soLuongCo;
    }

    public void setSoLuongCon(String soLuongCon) {
        this.soLuongCon = soLuongCon;
    }

}
