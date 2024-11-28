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

GET_VALIDATE LIQSC36599_CARates001_Legacy Base Rate Floor
    [Documentation]    This test case calculates Compounded Average Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_CompInArrearsRates\\Request_RatesCA001.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_CompInArrearsRates\\Response_CARates001.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_CompInArrearsRates\\Response_CARates001.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_CompInArrearsRates\\Response_CARates001.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_CARates002_Legacy Base Rate Floor
    [Documentation]    This test case calculates Compounded Average Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_CompInArrearsRates\\Request_RatesCA002.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_CompInArrearsRates\\Response_CARates002.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_CompInArrearsRates\\Response_CARates002.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_CompInArrearsRates\\Response_CARates002.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_CARates003_Legacy Base Rate Floor
    [Documentation]    This test case calculates Compounded Average Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_CompInArrearsRates\\Request_RatesCA003.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_CompInArrearsRates\\Response_CARates003.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_CompInArrearsRates\\Response_CARates003.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_CompInArrearsRates\\Response_CARates003.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_CARates004_Legacy Base Rate Floor
    [Documentation]    This test case calculates Compounded Average Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_CompInArrearsRates\\Request_RatesCA004.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_CompInArrearsRates\\Response_CARates004.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_CompInArrearsRates\\Response_CARates004.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_CompInArrearsRates\\Response_CARates004.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_CARates005_Legacy Base Rate Floor
    [Documentation]    This test case calculates Compounded Average Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_CompInArrearsRates\\Request_RatesCA005.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_CompInArrearsRates\\Response_CARates005.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_CompInArrearsRates\\Response_CARates005.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_CompInArrearsRates\\Response_CARates005.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_CARates006_Legacy Base Rate Floor
    [Documentation]    This test case calculates Compounded Average Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_CompInArrearsRates\\Request_RatesCA006.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_CompInArrearsRates\\Response_CARates006.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_CompInArrearsRates\\Response_CARates006.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_CompInArrearsRates\\Response_CARates006.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_CARates007_Legacy Base Rate Floor
    [Documentation]    This test case calculates Compounded Average Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_CompInArrearsRates\\Request_RatesCA007.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_CompInArrearsRates\\Response_CARates007.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_CompInArrearsRates\\Response_CARates007.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_CompInArrearsRates\\Response_CARates007.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_CARates008_Legacy Base Rate Floor
    [Documentation]    This test case calculates Compounded Average Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_CompInArrearsRates\\Request_RatesCA008.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_CompInArrearsRates\\Response_CARates008.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_CompInArrearsRates\\Response_CARates008.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_CompInArrearsRates\\Response_CARates008.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_CARates009_Legacy Base Rate Floor
    [Documentation]    This test case calculates Compounded Average Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_CompInArrearsRates\\Request_RatesCA009.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_CompInArrearsRates\\Response_CARates009.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_CompInArrearsRates\\Response_CARates009.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_CompInArrearsRates\\Response_CARates009.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_CARates010_Legacy Base Rate Floor
    [Documentation]    This test case calculates Compounded Average Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_CompInArrearsRates\\Request_RatesCA010.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_CompInArrearsRates\\Response_CARates010.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_CompInArrearsRates\\Response_CARates010.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_CompInArrearsRates\\Response_CARates010.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_CARates011_Legacy Base Rate Floor
    [Documentation]    This test case calculates Compounded Average Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_CompInArrearsRates\\Request_RatesCA011.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_CompInArrearsRates\\Response_CARates011.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_CompInArrearsRates\\Response_CARates011.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_CompInArrearsRates\\Response_CARates011.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_CARates012_Legacy Base Rate Floor
    [Documentation]    This test case calculates Compounded Average Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_CompInArrearsRates\\Request_RatesCA012.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_CompInArrearsRates\\Response_CARates012.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_CompInArrearsRates\\Response_CARates012.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_CompInArrearsRates\\Response_CARates012.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_CARates013_Legacy Base Rate Floor
    [Documentation]    This test case calculates Compounded Average Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_CompInArrearsRates\\Request_RatesCA013.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_CompInArrearsRates\\Response_CARates013.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_CompInArrearsRates\\Response_CARates013.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_CompInArrearsRates\\Response_CARates013.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_CARates014_Legacy Base Rate Floor
    [Documentation]    This test case calculates Compounded Average Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_CompInArrearsRates\\Request_RatesCA014.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_CompInArrearsRates\\Response_CARates014.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_CompInArrearsRates\\Response_CARates014.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_CompInArrearsRates\\Response_CARates014.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_CARates015_Legacy Base Rate Floor
    [Documentation]    This test case calculates Compounded Average Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_CompInArrearsRates\\Request_RatesCA015.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_CompInArrearsRates\\Response_CARates015.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_CompInArrearsRates\\Response_CARates015.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_CompInArrearsRates\\Response_CARates015.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_CARates016_Legacy Base Rate Floor
    [Documentation]    This test case calculates Compounded Average Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_CompInArrearsRates\\Request_RatesCA016.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_CompInArrearsRates\\Response_CARates016.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_CompInArrearsRates\\Response_CARates016.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_CompInArrearsRates\\Response_CARates016.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_CARates017_Legacy Base Rate Floor
    [Documentation]    This test case calculates Compounded Average Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_CompInArrearsRates\\Request_RatesCA017.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_CompInArrearsRates\\Response_CARates017.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_CompInArrearsRates\\Response_CARates017.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_CompInArrearsRates\\Response_CARates017.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_CARates018_Legacy Base Rate Floor
    [Documentation]    This test case calculates Compounded Average Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_CompInArrearsRates\\Request_RatesCA018.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_CompInArrearsRates\\Response_CARates018.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_CompInArrearsRates\\Response_CARates018.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_CompInArrearsRates\\Response_CARates018.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_CARates019_Legacy Base Rate Floor
    [Documentation]    This test case calculates Compounded Average Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_CompInArrearsRates\\Request_RatesCA019.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_CompInArrearsRates\\Response_CARates019.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_CompInArrearsRates\\Response_CARates019.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_CompInArrearsRates\\Response_CARates019.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_CARates020_Legacy Base Rate Floor
    [Documentation]    This test case calculates Compounded Average Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_CompInArrearsRates\\Request_RatesCA020.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_CompInArrearsRates\\Response_CARates020.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_CompInArrearsRates\\Response_CARates020.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_CompInArrearsRates\\Response_CARates020.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
