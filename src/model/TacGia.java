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
public class TacGia {

    private String maTacGia, tenTacGia, ghiChu;

    public TacGia() {
    }
    
    public TacGia(String maTacGia, String tenTacGia) {
        this.maTacGia = maTacGia;
        this.tenTacGia = tenTacGia;
    }

    public TacGia(String maTacGia, String tenTacGia, String ghiChu) {
        this.maTacGia = maTacGia;
        this.tenTacGia = tenTacGia;
        this.ghiChu = ghiChu;
    }

    public void setMaTacGia(String maTacGia) {
        this.maTacGia = maTacGia;
    }

    public void setTenTacGia(String tenTacGia) {
        this.tenTacGia = tenTacGia;
    }

    public void setGhiChu(String ghiChu) {
        this.ghiChu = ghiChu;
    }

    public String getMaTacGia() {
        return maTacGia;
    }

    public String getTenTacGia() {
        return tenTacGia;
    }

    public String getGhiChu() {
        return ghiChu;
    }

    @Override
    public String toString() {
        return maTacGia + " - " + tenTacGia;
    }
}
