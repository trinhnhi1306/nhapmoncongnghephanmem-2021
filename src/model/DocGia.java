/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Apple Bee
 */
public class DocGia extends NguoiDung {

    private String ngayDangKy, ngayHetHan, lop;

    public DocGia() {
    }

    public DocGia(String ma, String matKhau, String ten, String gioiTinh, String ngaySinh, String ngayDangKy, String ngayHetHan, String diaChi, String sdt, String email, String lop) {
        super(ma, matKhau, ten, gioiTinh, ngaySinh, diaChi, sdt, email);
        this.ngayDangKy = ngayDangKy;
        this.ngayHetHan = ngayHetHan;
        this.lop = lop;
    }

    public String getNgayDangKy() {
        return ngayDangKy;
    }

    public void setNgayDangKy(String ngayDangKy) {
        this.ngayDangKy = ngayDangKy;
    }

    public String getNgayHetHan() {
        return ngayHetHan;
    }

    public void setNgayHetHan(String ngayHetHan) {
        this.ngayHetHan = ngayHetHan;
    }

    public String getLop() {
        return lop;
    }

    public void setLop(String lop) {
        this.lop = lop;
    }

}
