*** Settings ***
Library    RequestsLibrary    
Library    JsonLibrary    
Library    String    
Library    GenericLib    
Library    Collections   
Library    OperatingSystem 
Library    GenerateOidcToken
Library    SeleniumLibraryExtended
Resource    ../../ConfigFile/ImportFile.robot 
Resource    ../../Keywords/Keywords.robot 
Resource    ../../../../UTF/UTF/UnifiedTestFramework/Keywords/REST/Common/CheckProxy/check_proxy_keyword.robot
Variables    ../../ConfigFile/GlobalConfig.py

Suite Setup    Login to ARRC GUI 
# Test Setup      CREATE REST API SESSIONS WITH KEYCLOAK TOKEN
# Suite Teardown    Test Teardown

*** Variables ***
&{keyCLoak_headers}    Content-Type=application/x-www-form-urlencoded    #Accept=application/json    #loginId=${User_ID}
# &{REST_headers}    Content-Type=application/json    Authorization=Bearer ${keyCloakToken}
&{HEADERS}
${RESPONSE}
${keyCloakToken}
${jsonToProtobuf_header}
${agentTransactionRefId_POST}
${agentTransactionRefId_GET}
${IgnoreKeys}

*** Keywords ***
Login to ARRC GUI
    # Open URL In Browser    ${ARRC_UI_URL}
    # User Logs in With Valid Credentials With Microsoftauthenticator    ${username_ARRC}    ${password_ARRC}
    Open URL In Browser    https://libor-transition-calculator.fusionfabric.cloud/t-755ed369-c100-4561-911c-dac288dc62b4/daily-compounding/SOFR
    User Logs in With Valid Credentials With Microsoftauthenticator    arr_webapp_user1@arrwebapp.onmicrosoft.com    Arrweb@1234
    # ${ARRC_UI_URL_On_Prem}    set Variable    https://lobdev.liq.fusionfabric.io:8091/arrcalculator/daily-compounding/SOFR
    # Open URL In Browser    ${ARRC_UI_URL_On_Prem}


*** Test Cases ***

ARRC_GUI_Verify_SOFR

    Click On Element    ${web_ARRC_SOFR_Link}
    Click On Element    ${web_ARRC_RatesCalculator_Button}
    Click On Element    ${web_ARRC_DailyCompoundinginArrears_Button}    
    
    Enter Data    ${web_ARRC_InterestPeriodStartDate_Edit}    10/1/2024
    Enter Data    ${web_ARRC_InterestPeriodEndDate_Edit}    11/1/2024
    Enter Data    ${web_ARRC_CalculateTillDate_Edit}    11/1/2024

    Select The Value From Dropdown    ${web_ARRC_DayCountConvention_Dropdown}    ACT/365

    Enter Data    ${web_ARRC_LookBackDays_Edit}    3
    Enter Data    ${web_ARRC_LockoutDays_Edit}    3



    




