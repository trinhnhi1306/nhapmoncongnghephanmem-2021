/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package table;

import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JTable;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

/**
 *
 * @author Admin
 */
public class DocGhiFile {

    public static void xuatFileExcel(String sheetName, ArrayList<String> ColumnTitles, JTable jTable, String fileName, boolean coSTT) {
        XSSFWorkbook workbook = new XSSFWorkbook();
        XSSFSheet sheet = workbook.createSheet(sheetName);
        XSSFRow row = null;
        Cell cell = null;
        row = sheet.createRow(0);
        cell = row.createCell(0, CellType.STRING);
        cell.setCellValue("STT");
        int m = 1;
        for (String title : ColumnTitles) {
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
    
    public static void xuatFilePDF(String fileName, String paragraph) {
        Document document = new Document();
        try {
            PdfWriter.getInstance(document, new FileOutputStream(fileName));
            document.open();
            document.add(new Paragraph(paragraph));
            document.close();
        } catch (FileNotFoundException | DocumentException ex) {
            Logger.getLogger(DocGhiFile.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
