package Runner;
import java.util.concurrent.TimeUnit;

import org.openqa.selenium.*;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;

public class MyDownload {
	public static void main(String[] args) {

		String baseUrl = "http://demo.guru99.com/test/yahoo.html" ;
		ChromeOptions options= new ChromeOptions();
		WebDriver driver;

		options.addArguments("disable-infobars");
		driver=new ChromeDriver(options);
		//driver.manage().window().maximize();
		driver.manage().timeouts().implicitlyWait(60, TimeUnit.SECONDS);
		driver.get("http://www.amazon.in");
		driver.manage().window().fullscreen();

		driver.get(baseUrl);
		WebElement downloadButton = driver.findElement(By.id("messenger-download"));
		String sourceLocation = downloadButton.getAttribute("href");
		String wget_command = "cmd /c C:\\Wget\\wget.exe -P D: --no-check-certificate " + sourceLocation;

		try {
			Process exec = Runtime.getRuntime().exec(wget_command);
			int exitVal = exec.waitFor();
			System.out.println("Exit value: " + exitVal);
		} catch (Exception ex) {
			System.out.println(ex.toString());
		}
		driver.close();
	}
}