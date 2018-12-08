package Runner;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.FileSystems;
import java.nio.file.Path;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Properties;

import org.apache.commons.collections4.functors.CatchAndRethrowClosure;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

public class MyUtil {
	//
	//	public static void writeExcel(String filepath, String fileName, String sheetName, String element, String elementwrite) throws IOException {
	//
	//		File file = new File(filepath+fileName);
	//		FileInputStream inputStream = new FileInputStream(file);// for reading file
	//
	//		XSSFWorkbook workBook= new XSSFWorkbook(inputStream);
	//
	//		XSSFSheet workSheet = workBook.getSheet("Sheet1");
	//
	//		int rowCount = workSheet.getLastRowNum() - workSheet.getFirstRowNum()+1;
	//		System.out.println("Number of rows are "+rowCount);
	//		for(int i=0; i<rowCount; i++) {
	//
	//			Row row = workSheet.getRow(i++);
	//			for(int j=0; j<row.getLastCellNum(); j++)
	//
	//			{	
	//				if((row.getCell(j).getStringCellValue().trim()).equalsIgnoreCase(element)) {
	//					
	//					Cell cell=row.getCell(j);
	//					cell.setCellValue(elementwrite);
	//					System.out.println("correct one "+row.getCell(j).getStringCellValue());
	//				}
	//			}	
	//		}	
	//	}
	//
	//	public static String readExcel(String filepath, String fileName, String sheetName, String element) throws IOException {
	//
	//		File file = new File(filepath+fileName);
	//		FileInputStream inputStream = new FileInputStream(file);// for reading file
	//
	//		XSSFWorkbook workBook= new XSSFWorkbook(inputStream);
	//
	//		XSSFSheet workSheet = workBook.getSheet("Sheet1");
	//		String value = null;
	//
	//
	//		int rowCount = workSheet.getLastRowNum() - workSheet.getFirstRowNum()+1;
	//		System.out.println("Number of rows are "+rowCount);
	//		for(int i=0; i<rowCount; i++) {
	//
	//			Row row = workSheet.getRow(i);
	//			for(int j=0; j<row.getLastCellNum(); j++)
	//
	//			{	
	//				if((row.getCell(j).getStringCellValue().trim()).equalsIgnoreCase(element)) {
	//
	//					//System.out.println("correct one "+row.getCell(j+1).getStringCellValue());
	//					value = row.getCell(j+1).getStringCellValue();
	//				}
	//			}	
	//		}
	//		return value;
	//	}

	//	public static void main(String[] args ) throws IOException {
	//		String filepath = "/Users/inflap139/Nishant/eclipse-workspace/SeleniumJavaCucumber/src/test/java/Runner/";
	//		String fileName = "Data.xlsx";
	//		String sheetName = "Sheet1";
	//		String element = "Username";
	//		String elementwrite = "hello there";
	//		String data=readExcel(filepath, fileName, sheetName, element);
	//		System.out.println("here data that we read is "+data);
	//		writeExcel(filepath, fileName, sheetName, element, elementwrite);
	//	}

	public static String loadProperties(String value) throws IOException {
		String data = null;
		InputStream input = null;

		Properties pr = new Properties();

		try {
			input = new FileInputStream(new File("./src/test/java/Runner/Config.properties"));
			pr.load(input);

			data=pr.getProperty(value);

		} catch (IOException ex) {
			ex.printStackTrace();
		} finally {
			if (input != null) {
				try {
					input.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		return data;
	}
	public static String get_Date() {
		String FILE = "report_cucmber.html";
		DateFormat df = new SimpleDateFormat("yyyyMMddhhmmss"); // add S if you need milliseconds
		String filename = FILE.split(".")[0] + df.format(new Date()) + FILE.split(".")[1];
		System.out.println("new file name is "+filename);
		return filename;
	}
	
}