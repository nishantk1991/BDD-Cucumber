Feature: Verify if user is able to Login in to the site

Scenario: Login with valid credentials in Amazon.com
    
 Given User is on home page of Amazon
 When User clicks on Login button
 Then User should be navigated to Login Page
 When User enters valid username and Password
 Then User should be logged in successfully
 When User searches for product
 Then User should be able to fetch product data