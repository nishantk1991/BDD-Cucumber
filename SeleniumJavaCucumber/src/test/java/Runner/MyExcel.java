package Runner;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

public class MyExcel {

	public static XSSFWorkbook workBook = new XSSFWorkbook();
	public static XSSFSheet workSheet;
	public static XSSFRow workRow;
	public static XSSFCell workCell;
	static String filepath = "/Users/inflap139/Nishant/eclipse-workspace/SeleniumJavaCucumber/src/test/java/Runner/";
	static String fileName = "Data.xlsx";

	public static void createSheet( String SheetName) throws IOException {
		workSheet = workBook.createSheet(SheetName);
		System.out.println("New excel sheet created with name "+SheetName);

		FileOutputStream out = new FileOutputStream(filepath+fileName);
		workBook.write(out);
		out.close();
	}
	public static void writeDataToExcelFirstRow( String SheetName, String Product_Number, String Product_Name, String Product_Price, String Product_Description, String Product_Link ) throws IOException {

		workRow= workSheet.createRow(0);

		String[][] data = new String[1][5];
		data[0][0] = Product_Number;
		data[0][1] = Product_Name;
		data[0][2] = Product_Price;
		data[0][3] = Product_Description;
		data[0][4] = Product_Link;

		for(int i=0; i<1; i++) {
			for(int j=0; j<5;j++) {
				XSSFCell myCell = workRow.createCell(j);
				myCell.setCellValue(data[i][j]);
			}
		}
		FileOutputStream out = new FileOutputStream(filepath+fileName);
		workBook.write(out);
		out.close();
	}

	public static void writeDataToExcel( String SheetName, String Product_Number, String Product_Name, String Product_Price, String Product_Description, String Product_Link,int i ) throws IOException , FileNotFoundException {

		String[][] data_new = new String[6][6];

		workRow = workSheet.createRow(i);

		//System.out.println("value of i is "+i);

		int j=0;
		FileOutputStream out = new FileOutputStream(filepath+fileName);
		workRow.createCell(j++).setCellValue(data_new[i][j] = Product_Number);
		workRow.createCell(j++).setCellValue(data_new[i][j] = Product_Name);
		workRow.createCell(j++).setCellValue(data_new[i][j] = Product_Price);
		workRow.createCell(j++).setCellValue(data_new[i][j] = Product_Description);
		workRow.createCell(j++).setCellValue(data_new[i][j] = Product_Link);

		workBook.write(out);
		out.close();

	}
}
