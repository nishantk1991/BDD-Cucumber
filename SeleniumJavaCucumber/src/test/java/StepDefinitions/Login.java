
package StepDefinitions;

//import static org.junit.Assert.assertTrue;
import java.io.IOException;
import java.util.Set;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import Runner.*;

public class Login extends testrunner {
	
	static WebDriverWait wait = new WebDriverWait(driver, 30);
	
	static By desktop_banner = By.xpath("//div[@id='desktop-banner']");
	static By SignInText = By.xpath("//span[contains(.,'Hello. Sign in')]");
	static By LoginButton = By.xpath("//h1[contains(text(),'Login')]");
	static By emailTextbox = By.xpath("//input[@type='email']");
	static By continueButton = By.xpath("//input[contains(@id,'continue')]");
	static By passwordTextbox = By.xpath("//input[@type='password']");
	static By submitButton = By.xpath("//input[contains(@id,'signInSubmit')]");
	static By helloText = By.xpath("//span[contains(.,'Hello')]");
	static By signOutLink = By.xpath("//span[contains(.,'Sign Out')]");
	static By searchBox = By.xpath("//input[@id='twotabsearchtextbox']");
	static By goButton= By.xpath("//input[contains(@type,'submit') and @value='Go']");
	static By productTitle = By.xpath("//span[@id='productTitle']");
	static By priceblock = By.xpath("//span[contains(@id,'priceblock')]");
	static By pDetails = By.xpath("//div[contains(@id,'detail-bullet')]//ul/li");
	
	

	public static void user_is_on_homepage() throws IOException {
		System.out.println("Name is : user_is_on_homepage");
		wait.until(ExpectedConditions.visibilityOfElementLocated(desktop_banner));
		
		
	}

	public static void user_clicks_to_Login_button() {
		System.out.println("Name is : user_clicks_to_Login_button");
		WebElement a1 = driver.findElement(SignInText);
		a1.click();
	}

	public static void verify_login_page() {
		System.out.println("Name is : verify_login_page");
		driver.findElement(LoginButton);
	}

	public static void enter_valid_username_password() throws IOException {
		System.out.println("Name is : enter_valid_username_password");
		String User_Name=MyUtil.loadProperties("Username");
		driver.findElement(emailTextbox).sendKeys(User_Name);
		driver.findElement(continueButton).click();
		String Password=MyUtil.loadProperties("Password");
		driver.findElement(passwordTextbox).sendKeys(Password);
		driver.findElement(submitButton).click();
	}

	public static void success_message_is_displayed() {
		System.out.println("Name is : success_message_is_displayed");

		WebElement element = driver.findElement(helloText);
		Actions action = new Actions(driver);
		action.moveToElement(element).build().perform();
		String SignOut_txt=driver.findElement(signOutLink).getText();
		System.out.println("...................."+SignOut_txt);
	}

	public static void search_data() {
		WebElement element = driver.findElement(searchBox);
		element.sendKeys("nike shoes");
		driver.findElement(goButton).click();
		System.out.println("searching data");
	}

	public static void getProduct_Details() throws Exception {
		MyExcel.createSheet("hello");
		MyExcel.writeDataToExcelFirstRow("hello","Product_Number","Product_Name","Product_Price","Product_Description","Product_Link");

		String currentWindow = driver.getWindowHandle();

		for(int i=1; i<6; i++) {
			System.out.println("start of the loop....."+i);
			int x=i;
			//String pNumber = Integer.toString(++x);
			String pNumber = Integer.toString(x);
			WebElement element=	driver.findElement(By.xpath("//li[@id='result_"+i+"']"));
			element.click();

			Set<String> windowHandles= driver.getWindowHandles();

			for(String handle : windowHandles) {
				if(handle != currentWindow) {
					driver.switchTo().window(handle);
				}
			}
			WebElement pName = driver.findElement(productTitle);
			String pNametxt = pName.getText().trim();
			System.out.println("pNametxt"+pNametxt);
			WebElement pPrice = driver.findElement(priceblock);
			String pPricetxt = pPrice.getText().trim();
			System.out.println("pPricetxt "+pPricetxt);
			WebElement pDescription = driver.findElement(pDetails);
			String pDescriptiontxt = pDescription.getText().trim();
			System.out.println("pDescriptiontxt "+pDescriptiontxt);
			String pAddress = driver.getCurrentUrl();
			String pAddresstxt = pAddress.trim();
			System.out.println("pAddresstxt "+pAddresstxt);
			
			driver.close();
			Thread.sleep(4000);
			System.out.println("end of the for loop..............."+i);
			driver.switchTo().window(currentWindow);
			
			MyExcel.writeDataToExcel("hello", pNumber, pNametxt, pPricetxt, pDescriptiontxt, pAddresstxt, i);

		}
	}
}