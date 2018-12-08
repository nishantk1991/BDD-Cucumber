package Runner;

import java.io.FileInputStream;
import java.io.IOException;
/*
 * 1.load the package
 * 2.load and register the Driver
 * 3. Create a connection 
 * 4. Create a statement
 * 5. Execute the query
 * 6. Process the results
 * 7. Close
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

public class MyJDBC {
	public static void update_jdbc() throws Exception{
		//	
		//			String url="jdbc:mysql://localhost:3306/Sep_25th?autoReconnect=true&useSSL=false";	
		//			String query = "SELECT * FROM cats";	
		//			Class.forName("com.mysql.jdbc.Driver");	
		//			Connection con = DriverManager.getConnection(url, "root", "dragon");	
		//			Statement st = con.createStatement();//createStatement returns object of statement	
		//			ResultSet rs = st.executeQuery(query);	
		//			while(rs.next())
		//			{
		//				String name = rs.getString(2);
		//				System.out.println(name);
		//			}	
		//			st.close();
		//			con.close();
		//		}
		//}
		//	public class TestApp {
		//		public static void main(String[] args) throws Exception {

		try 
		{

			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shirts_db?autoReconnect=true&useSSL=false", "root", "dragon");
			con.setAutoCommit(false);
			PreparedStatement pstm1 = null,pstm2 = null,pstm3 = null,pstm4 = null;
			FileInputStream input = new FileInputStream("/Users/inflap139/Nishant/eclipse-workspace/SeleniumJavaCucumber/src/test/java/Runner/Data.xlsx");
			XSSFWorkbook workBook = new XSSFWorkbook(input);
			Sheet sheet = workBook.getSheetAt(0);
			System.out.println("number"+sheet.getLastRowNum());
			Row row;
			String sql1 = "use Sep_25th";
			String sql2 = "drop table employees";
			String sql3 = "create table employees(Product_Number varchar(100),Product_Name varchar(100),Product_Price varchar(100), Product_Description varchar(100),Product_Link varchar(200))";
			
			pstm1 = con.prepareStatement(sql1);
			pstm2 = con.prepareStatement(sql2);
			pstm3 = con.prepareStatement(sql3);
			
			pstm1.execute();
			pstm2.execute();
			pstm3.execute();
			
			for (int i = 0; i <= sheet.getLastRowNum(); i++) {
				row = sheet.getRow(i);
				String Product_Number = row.getCell(0).getStringCellValue();
				String Product_Name = row.getCell(1).getStringCellValue().replace("'", "''");
				String Product_Price =  row.getCell(2).getStringCellValue();
				String Product_Description = row.getCell(3).getStringCellValue();
				String Product_Link = row.getCell(4).getStringCellValue();
				System.out.println("product link "+Product_Link);

				
				String sql4 = "INSERT INTO employees (Product_Number, Product_Name, Product_Price, Product_Description, Product_Link) VALUES('" + Product_Number + "','" + Product_Name + "','" + Product_Price + "','" + Product_Description + "','"+Product_Link+"')";
				//String sql5 = "Select * from employee";


				//System.out.println("Import add " + sql);
				
				
				pstm4 = con.prepareStatement(sql4);
				//pstm5 = con.prepareStatement(sql5);

				
				pstm4.execute();
				//pstm5.execute();

				System.out.println("Import rows " + i);
			}
			con.commit();
			//pstm.close();
			con.close();
			workBook.close();
			System.out.println("Success import excel to mysql table");
		} catch (IOException e) {
		}
	}
}