/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package table;

import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Font;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.BaseFont;
import com.itextpdf.text.pdf.PdfWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.ss.usermodel.FormulaEvaluator;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

/**
 *
 * @author Admin
 */
public class DocGhiFile {

    public static void xuatFileExcel(String sheetName, ArrayList<String> columnTitles, JTable jTable, String fileName, boolean coSTT) {
        XSSFWorkbook workbook = new XSSFWorkbook();
        XSSFSheet sheet = workbook.createSheet(sheetName);
        XSSFRow row = null;
        Cell cell = null;
        row = sheet.createRow(0);
        cell = row.createCell(0, CellType.STRING);
        cell.setCellValue("STT");
        int m = 1;
        for (String title : columnTitles) {
            cell = row.createCell(m, CellType.STRING);
            cell.setCellValue(title);
            m++;
        }
        int r = jTable.getRowCount();
        int c = jTable.getColumnCount();
        if (coSTT) {
            for (int i = 0; i < r; i++) {
                row = sheet.createRow(i + 1);
                cell = row.createCell(0, CellType.NUMERIC);
                cell.setCellValue(i + 1);
                for (int j = 1; j < c; j++) {
                    cell = row.createCell(j, CellType.STRING);
                    cell.setCellValue((String) jTable.getValueAt(i, j));
                }
            }
        } else {
            for (int i = 0; i < r; i++) {
                row = sheet.createRow(i + 1);
                cell = row.createCell(0, CellType.NUMERIC);
                cell.setCellValue(i + 1);
                for (int j = 0; j < c; j++) {
                    cell = row.createCell(j + 1, CellType.STRING);
                    cell.setCellValue((String) jTable.getValueAt(i, j));
                }
            }
        }
        //Lưu file
        File f = new File(fileName);
        try {
            FileOutputStream fos = new FileOutputStream(f);
            workbook.write(fos);
            fos.close();
        } catch (FileNotFoundException ex) {
            Logger.getLogger(DocGhiFile.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(DocGhiFile.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public static void nhapFileExcel(JFrame fr, String filePath, ArrayList<String> columnTitles, JTable jTable, int slCot, boolean cotSTT) {
        DefaultTableModel model = (DefaultTableModel) jTable.getModel();
        model.setNumRows(0);
        boolean kt = true;
        Vector vt = null;
        try {
            FileInputStream file = new FileInputStream(filePath);
            XSSFWorkbook workbook = new XSSFWorkbook(file);
            XSSFSheet sheet = workbook.getSheetAt(0);
            FormulaEvaluator formula = workbook.getCreationHelper().createFormulaEvaluator();
            for(Row row : sheet) {
                for (int i = 0; i <= slCot; i++) {
                    if (!String.valueOf(row.getCell(i)).equals(columnTitles.get(i))) {
                        JOptionPane.showMessageDialog(fr, "Thứ tự cột file excel không đúng!");
                        return;
                    }
                }
                JOptionPane.showMessageDialog(fr, "Nhập file excel thành công!");
                break;
            }
            for(Row row : sheet) {
                if (kt == true) {
                    kt = false;
                    continue;
                }
                vt = new Vector();
                for (int i = (cotSTT == true) ? 0 : 1; i <= slCot; i++){
                    vt.add(row.getCell(i));
                }
                model.addRow(vt);
            }
        } catch (IOException ex) {
            Logger.getLogger(DocGhiFile.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public static void xuatFilePDF(String fileName, String paragraph) {
        Document document = new Document();
        File fontFile = new File("vuArial.ttf");
        try {
            PdfWriter.getInstance(document, new FileOutputStream(fileName));
            BaseFont bf = BaseFont.createFont(fontFile.getAbsolutePath(), BaseFont.IDENTITY_H, BaseFont.EMBEDDED);
            Font font = new Font(bf, 15);
            document.open();
            document.add(new Paragraph(paragraph, font));
            document.close();
        } catch (FileNotFoundException | DocumentException ex) {
            Logger.getLogger(DocGhiFile.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(DocGhiFile.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
