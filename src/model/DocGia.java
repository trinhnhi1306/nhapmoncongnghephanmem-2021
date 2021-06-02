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

    public DocGia() {
    }

    public DocGia(String maDG, String matKhau, String tenDG, String gioiTinh, String ngaySinh, String ngayDangKy, String ngayHetHan, String diaChi, String sdt, String email, String maLop) {
        super(maDG, matKhau, tenDG, gioiTinh, ngaySinh, ngayDangKy, ngayHetHan, diaChi, sdt, email, maLop);
    }

    public DocGia(String maDG, String matKhau, String tenDG, String gioiTinh, String ngaySinh, String ngayDangKy, String ngayHetHan, String diaChi, String sdt, String email, String maVaiTro, String maLop) {
        super(maDG, matKhau, tenDG, gioiTinh, ngaySinh, ngayDangKy, ngayHetHan, diaChi, sdt, email, maVaiTro, maLop);
    }
}
