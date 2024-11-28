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



GET_VALIDATE ARRC_RATES_LIQ-120691DC001_CALCULATE Daily Compounded Rate
    [Documentation]    This test case calculates Compounded Daily Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ120691DCRates\\Request_LIQ-120691DC001.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691DCRates\\Response_LIQ-120691DC001.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691DCRates\\Response_LIQ-120691DC001.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691DCRates\\Response_LIQ-120691DC001.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_RATES_LIQ-120691DC002_CALCULATE Daily Compounded Rate
    [Documentation]    This test case calculates Compounded Daily Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ120691DCRates\\Request_LIQ-120691DC002.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691DCRates\\Response_LIQ-120691DC002.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691DCRates\\Response_LIQ-120691DC002.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691DCRates\\Response_LIQ-120691DC002.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_RATES_LIQ-120691DC003_CALCULATE Daily Compounded Rate
    [Documentation]    This test case calculates Compounded Daily Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ120691DCRates\\Request_LIQ-120691DC003.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691DCRates\\Response_LIQ-120691DC003.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691DCRates\\Response_LIQ-120691DC003.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691DCRates\\Response_LIQ-120691DC003.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_RATES_LIQ-120691DC004_CALCULATE Daily Compounded Rate
    [Documentation]    This test case calculates Compounded Daily Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ120691DCRates\\Request_LIQ-120691DC004.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691DCRates\\Response_LIQ-120691DC004.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691DCRates\\Response_LIQ-120691DC004.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691DCRates\\Response_LIQ-120691DC004.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_RATES_LIQ-120691DC005_CALCULATE Daily Compounded Rate
    [Documentation]    This test case calculates Compounded Daily Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ120691DCRates\\Request_LIQ-120691DC005.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691DCRates\\Response_LIQ-120691DC005.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691DCRates\\Response_LIQ-120691DC005.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691DCRates\\Response_LIQ-120691DC005.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_RATES_LIQ-120691DC006_CALCULATE Daily Compounded Rate
    [Documentation]    This test case calculates Compounded Daily Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ120691DCRates\\Request_LIQ-120691DC006.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691DCRates\\Response_LIQ-120691DC006.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691DCRates\\Response_LIQ-120691DC006.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691DCRates\\Response_LIQ-120691DC006.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_RATES_LIQ-120691DC007_CALCULATE Daily Compounded Rate
    [Documentation]    This test case calculates Compounded Daily Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ120691DCRates\\Request_LIQ-120691DC007.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691DCRates\\Response_LIQ-120691DC007.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691DCRates\\Response_LIQ-120691DC007.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691DCRates\\Response_LIQ-120691DC007.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_RATES_LIQ-120691DC008_CALCULATE Daily Compounded Rate
    [Documentation]    This test case calculates Compounded Daily Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ120691DCRates\\Request_LIQ-120691DC008.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691DCRates\\Response_LIQ-120691DC008.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691DCRates\\Response_LIQ-120691DC008.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691DCRates\\Response_LIQ-120691DC008.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_RATES_LIQ-120691DC009_CALCULATE Daily Compounded Rate
    [Documentation]    This test case calculates Compounded Daily Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ120691DCRates\\Request_LIQ-120691DC009.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691DCRates\\Response_LIQ-120691DC009.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691DCRates\\Response_LIQ-120691DC009.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691DCRates\\Response_LIQ-120691DC009.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_RATES_LIQ-120691DC010_CALCULATE Daily Compounded Rate
    [Documentation]    This test case calculates Compounded Daily Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ120691DCRates\\Request_LIQ-120691DC010.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691DCRates\\Response_LIQ-120691DC010.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691DCRates\\Response_LIQ-120691DC010.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691DCRates\\Response_LIQ-120691DC010.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_RATES_LIQ-120691DC011_CALCULATE Daily Compounded Rate
    [Documentation]    This test case calculates Compounded Daily Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ120691DCRates\\Request_LIQ-120691DC011.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691DCRates\\Response_LIQ-120691DC011.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691DCRates\\Response_LIQ-120691DC011.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691DCRates\\Response_LIQ-120691DC011.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_RATES_LIQ-120691DC012_CALCULATE Daily Compounded Rate
    [Documentation]    This test case calculates Compounded Daily Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ120691DCRates\\Request_LIQ-120691DC012.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691DCRates\\Response_LIQ-120691DC012.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691DCRates\\Response_LIQ-120691DC012.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691DCRates\\Response_LIQ-120691DC012.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_RATES_LIQ-120691DC013_CALCULATE Daily Compounded Rate
    [Documentation]    This test case calculates Compounded Daily Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ120691DCRates\\Request_LIQ-120691DC013.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691DCRates\\Response_LIQ-120691DC013.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691DCRates\\Response_LIQ-120691DC013.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691DCRates\\Response_LIQ-120691DC013.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_RATES_LIQ-120691DC014_CALCULATE Daily Compounded Rate
    [Documentation]    This test case calculates Compounded Daily Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ120691DCRates\\Request_LIQ-120691DC014.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691DCRates\\Response_LIQ-120691DC014.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691DCRates\\Response_LIQ-120691DC014.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691DCRates\\Response_LIQ-120691DC014.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_RATES_LIQ-120691DC016_CALCULATE Daily Compounded Rate
    [Documentation]    This test case calculates Compounded Daily Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ120691DCRates\\Request_LIQ-120691DC016.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691DCRates\\Response_LIQ-120691DC016.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691DCRates\\Response_LIQ-120691DC016.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691DCRates\\Response_LIQ-120691DC016.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_RATES_LIQ-120691DC017_CALCULATE Daily Compounded Rate
    [Documentation]    This test case calculates Compounded Daily Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ120691DCRates\\Request_LIQ-120691DC017.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691DCRates\\Response_LIQ-120691DC017.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691DCRates\\Response_LIQ-120691DC017.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691DCRates\\Response_LIQ-120691DC017.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_RATES_LIQ-120691DC018_CALCULATE Daily Compounded Rate
    [Documentation]    This test case calculates Compounded Daily Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ120691DCRates\\Request_LIQ-120691DC018.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691DCRates\\Response_LIQ-120691DC018.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691DCRates\\Response_LIQ-120691DC018.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691DCRates\\Response_LIQ-120691DC018.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_RATES_LIQ-120691DC019_CALCULATE Daily Compounded Rate
    [Documentation]    This test case calculates Compounded Daily Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ120691DCRates\\Request_LIQ-120691DC019.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691DCRates\\Response_LIQ-120691DC019.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691DCRates\\Response_LIQ-120691DC019.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691DCRates\\Response_LIQ-120691DC019.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

