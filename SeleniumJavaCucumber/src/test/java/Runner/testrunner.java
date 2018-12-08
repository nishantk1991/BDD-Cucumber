package Runner;

import java.util.concurrent.TimeUnit;

//import java.io.File;

import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.runner.RunWith;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
//import org.openqa.selenium.support.PageFactory;

import com.vimalselvam.cucumber.listener.Reporter;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;
//import com.vimalselvam.cucumber.listener.ExtentCucumberFormatter;

@RunWith(Cucumber.class)
@CucumberOptions(
		features ="src/test/java/features",
		glue= "StepDeclarations",
		plugin = { "com.vimalselvam.cucumber.listener.ExtentCucumberFormatter:target/cucumber-reports/report_cucumber.html"}, 
		//plugin = { "com.vimalselvam.cucumber.listener.ExtentCucumberFormatter:target/cucumber-reports/"+MyUtil.get_Date()},
		monochrome = true
		)

public class testrunner {

	static ChromeOptions options= new ChromeOptions();
	public static WebDriver driver;


	@BeforeClass
	public static void initializeDriver() {
		options.addArguments("disable-infobars");
		driver=new ChromeDriver(options);
		//driver.manage().window().maximize();
		driver.manage().timeouts().implicitlyWait(60, TimeUnit.SECONDS);
		driver.get("http://www.amazon.in");
		driver.manage().window().fullscreen();
	}

	@AfterClass
	public static void writeExtentReport() throws Exception {
		//this.getClass().getResource("/config/report_cucumber.xml");
		//    	String cwd = System.getProperty("user.dir");
		//    	System.out.println("cwd: "+cwd);
		//    	File file=new File(".");
		//    	System.out.println("file dir: "+file.getPath());
		Reporter.loadXMLConfig("./Config/report_cucumber.xml");
		MyJDBC.update_jdbc();
		//EmailNotification.sendEmail();
		//       driver.close();
	}
}