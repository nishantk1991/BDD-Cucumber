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

GET_VALIDATE LIQSC36599_DCRates001_Legacy Base Rate Floor
    [Documentation]    This test case calculates Daily compounding Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_DailyCompoundingRates\\Request_RatesDC001.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompoundingRates\\Response_DCRates001.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompoundingRates\\Response_DCRates001.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompoundingRates\\Response_DCRates001.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_DCRates002_Legacy Base Rate Floor
    [Documentation]    This test case calculates Daily compounding Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_DailyCompoundingRates\\Request_RatesDC002.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompoundingRates\\Response_DCRates002.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompoundingRates\\Response_DCRates002.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompoundingRates\\Response_DCRates002.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_DCRates003_Legacy Base Rate Floor
    [Documentation]    This test case calculates Daily compounding Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_DailyCompoundingRates\\Request_RatesDC003.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompoundingRates\\Response_DCRates003.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompoundingRates\\Response_DCRates003.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompoundingRates\\Response_DCRates003.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_DCRates004_Legacy Base Rate Floor
    [Documentation]    This test case calculates Daily compounding Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_DailyCompoundingRates\\Request_RatesDC004.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompoundingRates\\Response_DCRates004.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompoundingRates\\Response_DCRates004.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompoundingRates\\Response_DCRates004.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_DCRates005_Legacy Base Rate Floor
    [Documentation]    This test case calculates Daily compounding Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_DailyCompoundingRates\\Request_RatesDC005.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompoundingRates\\Response_DCRates005.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompoundingRates\\Response_DCRates005.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompoundingRates\\Response_DCRates005.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_DCRates006_Legacy Base Rate Floor
    [Documentation]    This test case calculates Daily compounding Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_DailyCompoundingRates\\Request_RatesDC006.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompoundingRates\\Response_DCRates006.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompoundingRates\\Response_DCRates006.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompoundingRates\\Response_DCRates006.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_DCRates007_Legacy Base Rate Floor
    [Documentation]    This test case calculates Daily compounding Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_DailyCompoundingRates\\Request_RatesDC007.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompoundingRates\\Response_DCRates007.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompoundingRates\\Response_DCRates007.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompoundingRates\\Response_DCRates007.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_DCRates008_Legacy Base Rate Floor
    [Documentation]    This test case calculates Daily compounding Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_DailyCompoundingRates\\Request_RatesDC008.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompoundingRates\\Response_DCRates008.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompoundingRates\\Response_DCRates008.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompoundingRates\\Response_DCRates008.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_DCRates009_Legacy Base Rate Floor
    [Documentation]    This test case calculates Daily compounding Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_DailyCompoundingRates\\Request_RatesDC009.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompoundingRates\\Response_DCRates009.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompoundingRates\\Response_DCRates009.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompoundingRates\\Response_DCRates009.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_DCRates010_Legacy Base Rate Floor
    [Documentation]    This test case calculates Daily compounding Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_DailyCompoundingRates\\Request_RatesDC010.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompoundingRates\\Response_DCRates010.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompoundingRates\\Response_DCRates010.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompoundingRates\\Response_DCRates010.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_DCRates011_Legacy Base Rate Floor
    [Documentation]    This test case calculates Daily compounding Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_DailyCompoundingRates\\Request_RatesDC011.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompoundingRates\\Response_DCRates011.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompoundingRates\\Response_DCRates011.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompoundingRates\\Response_DCRates011.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_DCRates012_Legacy Base Rate Floor
    [Documentation]    This test case calculates Daily compounding Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_DailyCompoundingRates\\Request_RatesDC012.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompoundingRates\\Response_DCRates012.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompoundingRates\\Response_DCRates012.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompoundingRates\\Response_DCRates012.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_DCRates013_Legacy Base Rate Floor
    [Documentation]    This test case calculates Daily compounding Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_DailyCompoundingRates\\Request_RatesDC013.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompoundingRates\\Response_DCRates013.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompoundingRates\\Response_DCRates013.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompoundingRates\\Response_DCRates013.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_DCRates014_Legacy Base Rate Floor
    [Documentation]    This test case calculates Daily compounding Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_DailyCompoundingRates\\Request_RatesDC014.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompoundingRates\\Response_DCRates014.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompoundingRates\\Response_DCRates014.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompoundingRates\\Response_DCRates014.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_DCRates015_Legacy Base Rate Floor
    [Documentation]    This test case calculates Daily compounding Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_DailyCompoundingRates\\Request_RatesDC015.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompoundingRates\\Response_DCRates015.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompoundingRates\\Response_DCRates015.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompoundingRates\\Response_DCRates015.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_DCRates016_Legacy Base Rate Floor
    [Documentation]    This test case calculates Daily compounding Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_DailyCompoundingRates\\Request_RatesDC016.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompoundingRates\\Response_DCRates016.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompoundingRates\\Response_DCRates016.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompoundingRates\\Response_DCRates016.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_DCRates017_Legacy Base Rate Floor
    [Documentation]    This test case calculates Daily compounding Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_DailyCompoundingRates\\Request_RatesDC017.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompoundingRates\\Response_DCRates017.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompoundingRates\\Response_DCRates017.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompoundingRates\\Response_DCRates017.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_DCRates018_Legacy Base Rate Floor
    [Documentation]    This test case calculates Daily compounding Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_DailyCompoundingRates\\Request_RatesDC018.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompoundingRates\\Response_DCRates018.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompoundingRates\\Response_DCRates018.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompoundingRates\\Response_DCRates018.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_DCRates019_Legacy Base Rate Floor
    [Documentation]    This test case calculates Daily compounding Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_DailyCompoundingRates\\Request_RatesDC019.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompoundingRates\\Response_DCRates019.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompoundingRates\\Response_DCRates019.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompoundingRates\\Response_DCRates019.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_DCRates020_Legacy Base Rate Floor
    [Documentation]    This test case calculates Daily compounding Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_DailyCompoundingRates\\Request_RatesDC020.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompoundingRates\\Response_DCRates020.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompoundingRates\\Response_DCRates020.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompoundingRates\\Response_DCRates020.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
