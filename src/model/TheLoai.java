/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Admin
 */
public class TheLoai {

    private String maTheLoai, tenTheLoai, ghiChu;

    public TheLoai() {
    }

    public TheLoai(String maTheLoai, String tenTheLoai, String ghiChu) {
        this.maTheLoai = maTheLoai;
        this.tenTheLoai = tenTheLoai;
        this.ghiChu = ghiChu;
    }

    public String getMaTheLoai() {
        return maTheLoai;
    }

    public String getTenTheLoai() {
        return tenTheLoai;
    }

    public String getGhiChu() {
        return ghiChu;
    }

    public void setMaTheLoai(String maTheLoai) {
        this.maTheLoai = maTheLoai;
    }

    public void setTenTheLoai(String tenTheLoai) {
        this.tenTheLoai = tenTheLoai;
    }

    public void setGhiChu(String ghiChu) {
        this.ghiChu = ghiChu;
    }

    @Override
    public String toString() {
        return maTheLoai + " - " + tenTheLoai;
    }
}
