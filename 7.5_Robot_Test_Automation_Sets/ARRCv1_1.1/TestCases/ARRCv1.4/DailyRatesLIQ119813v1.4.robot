*** Settings ***
Library    RequestsLibrary  
Library    JsonLibrary    
Library    String    
# Library    GenerateOidcToken
Library    BaselineComparator    

# Library    Collections   
# Library    OperatingSystem 
Variables    ../../ConfigFile/GlobalConfig.py
Resource    ../../ConfigFile/ImportFile.robot



Suite Teardown    Delete All Sessions

Test Setup    GIVEN VALID AUTHENTICATION TOKEN AND SESSION IS CREATED

*** Variables ***
@{IGNORED_KEYS_JSON_COMPARE}    Create List    comment    legalDisclaimer    lastUpdatedFromSource    

${HEADERS}
${RESPONSE}
${API_REQUEST_FROM_FILE}



*** Test Cases ***

GET_VALIDATE ARRC_RATES_LIQ119813DC001_CALCULATE DAILY COMPOUNDED RATE
    [Documentation]    This test case calculates Daily Compounded Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ119813DCRates\\Request_LIQ119813DC001.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813DCRates\\Response_LIQ119813DC001.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813DCRates\\Response_LIQ119813DC001.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813DCRates\\Response_LIQ119813DC001.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_RATES_LIQ119813DC002_CALCULATE DAILY COMPOUNDED RATE
    [Documentation]    This test case calculates Daily Compounded Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ119813DCRates\\Request_LIQ119813DC002.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813DCRates\\Response_LIQ119813DC002.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813DCRates\\Response_LIQ119813DC002.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813DCRates\\Response_LIQ119813DC002.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_RATES_LIQ119813DC003_CALCULATE DAILY COMPOUNDED RATE
    [Documentation]    This test case calculates Daily Compounded Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ119813DCRates\\Request_LIQ119813DC003.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813DCRates\\Response_LIQ119813DC003.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813DCRates\\Response_LIQ119813DC003.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813DCRates\\Response_LIQ119813DC003.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_RATES_LIQ119813DC004_CALCULATE DAILY COMPOUNDED RATE
    [Documentation]    This test case calculates Daily Compounded Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ119813DCRates\\Request_LIQ119813DC004.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813DCRates\\Response_LIQ119813DC004.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813DCRates\\Response_LIQ119813DC004.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813DCRates\\Response_LIQ119813DC004.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_RATES_LIQ119813DC005_CALCULATE DAILY COMPOUNDED RATE
    [Documentation]    This test case calculates Daily Compounded Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ119813DCRates\\Request_LIQ119813DC005.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813DCRates\\Response_LIQ119813DC005.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813DCRates\\Response_LIQ119813DC005.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813DCRates\\Response_LIQ119813DC005.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_RATES_LIQ119813DC006_CALCULATE DAILY COMPOUNDED RATE
    [Documentation]    This test case calculates Daily Compounded Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ119813DCRates\\Request_LIQ119813DC006.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813DCRates\\Response_LIQ119813DC006.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813DCRates\\Response_LIQ119813DC006.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813DCRates\\Response_LIQ119813DC006.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_RATES_LIQ119813DC007_CALCULATE DAILY COMPOUNDED RATE
    [Documentation]    This test case calculates Daily Compounded Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ119813DCRates\\Request_LIQ119813DC007.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813DCRates\\Response_LIQ119813DC007.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813DCRates\\Response_LIQ119813DC007.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813DCRates\\Response_LIQ119813DC007.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_RATES_LIQ119813DC008_CALCULATE DAILY COMPOUNDED RATE
    [Documentation]    This test case calculates Daily Compounded Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ119813DCRates\\Request_LIQ119813DC008.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813DCRates\\Response_LIQ119813DC008.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813DCRates\\Response_LIQ119813DC008.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813DCRates\\Response_LIQ119813DC008.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_RATES_LIQ119813DC010_CALCULATE DAILY COMPOUNDED RATE
    [Documentation]    This test case calculates Daily Compounded Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ119813DCRates\\Request_LIQ119813DC010.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813DCRates\\Response_LIQ119813DC010.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813DCRates\\Response_LIQ119813DC010.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813DCRates\\Response_LIQ119813DC010.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_RATES_LIQ119813DC011_CALCULATE DAILY COMPOUNDED RATE
    [Documentation]    This test case calculates Daily Compounded Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ119813DCRates\\Request_LIQ119813DC011.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813DCRates\\Response_LIQ119813DC011.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813DCRates\\Response_LIQ119813DC011.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813DCRates\\Response_LIQ119813DC011.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

