package StepDeclarations;

import java.io.IOException;

import StepDefinitions.Login;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class StepDeclaration {
	
	@Given("User is on home page of Amazon")
	public void user_is_on_homepage() throws IOException{	
		Login.user_is_on_homepage();
	}

	@When("User clicks on Login button")
	public void user_clicks_to_Login_Page(){
		Login.user_clicks_to_Login_button();
	}

	@Then("User should be navigated to Login Page")
	public void verify_login_page(){
		Login.verify_login_page();
	}

	@When("User enters valid username and Password")
	public void enter_valid_username_password() throws IOException {
		Login.enter_valid_username_password();
	}

	@Then("User should be logged in successfully")
	public void success_message_is_displayed(){
		Login.success_message_is_displayed();
	}
	@When("User searches for product")
	public void search_for_product() {
		Login.search_data();
	}
	@Then("User should be able to fetch product data")
	public void fetch_product_data() throws Exception {
		Login.getProduct_Details();
		
	}
	
}
