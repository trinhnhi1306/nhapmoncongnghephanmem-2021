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

    private String ngayDangKy, ngayHetHan, maLop;

    public DocGia() {
    }

    public DocGia(String maDG, String matKhau, String tenDG, String gioiTinh, String ngaySinh, String ngayDangKy, String ngayHetHan, String diaChi, String sdt, String email, String maVaiTro, String maLop) {
        super(maDG, matKhau, tenDG, gioiTinh, ngaySinh, diaChi, sdt, email, maVaiTro);
        this.ngayDangKy = ngayDangKy;
        this.ngayHetHan = ngayHetHan;
        this.maLop = maLop;
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

    public String getMaLop() {
        return maLop;
    }

    public void setMaLop(String maLop) {
        this.maLop = maLop;
    }

}
