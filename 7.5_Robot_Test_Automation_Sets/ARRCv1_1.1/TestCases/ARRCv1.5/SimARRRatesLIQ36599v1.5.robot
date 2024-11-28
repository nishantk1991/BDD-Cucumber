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

GET_VALIDATE LIQSC36599_SARRRates001_Legacy Base Rate Floor
    [Documentation]    This test case calculates Simple ARR Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_SimpleARRRates\\Request_SARR001.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleARRRates\\Response_SARR001.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleARRRates\\Response_SARR001.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleARRRates\\Response_SARR001.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_SARRRates002_Legacy Base Rate Floor
    [Documentation]    This test case calculates Simple ARR Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_SimpleARRRates\\Request_SARR002.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleARRRates\\Response_SARR002.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleARRRates\\Response_SARR002.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleARRRates\\Response_SARR002.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_SARRRates003_Legacy Base Rate Floor
    [Documentation]    This test case calculates Simple ARR Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_SimpleARRRates\\Request_SARR003.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleARRRates\\Response_SARR003.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleARRRates\\Response_SARR003.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleARRRates\\Response_SARR003.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_SARRRates004_Legacy Base Rate Floor
    [Documentation]    This test case calculates Simple ARR Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_SimpleARRRates\\Request_SARR004.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleARRRates\\Response_SARR004.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleARRRates\\Response_SARR004.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleARRRates\\Response_SARR004.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_SARRRates005_Legacy Base Rate Floor
    [Documentation]    This test case calculates Simple ARR Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_SimpleARRRates\\Request_SARR005.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleARRRates\\Response_SARR005.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleARRRates\\Response_SARR005.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleARRRates\\Response_SARR005.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_SARRRates006_Legacy Base Rate Floor
    [Documentation]    This test case calculates Simple ARR Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_SimpleARRRates\\Request_SARR006.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleARRRates\\Response_SARR006.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleARRRates\\Response_SARR006.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleARRRates\\Response_SARR006.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_SARRRates007_Legacy Base Rate Floor
    [Documentation]    This test case calculates Simple ARR Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_SimpleARRRates\\Request_SARR007.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleARRRates\\Response_SARR007.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleARRRates\\Response_SARR007.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleARRRates\\Response_SARR007.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_SARRRates008_Legacy Base Rate Floor
    [Documentation]    This test case calculates Simple ARR Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_SimpleARRRates\\Request_SARR008.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleARRRates\\Response_SARR008.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleARRRates\\Response_SARR008.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleARRRates\\Response_SARR008.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_SARRRates009_Legacy Base Rate Floor
    [Documentation]    This test case calculates Simple ARR Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_SimpleARRRates\\Request_SARR009.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleARRRates\\Response_SARR009.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleARRRates\\Response_SARR009.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleARRRates\\Response_SARR009.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_SARRRates010_Legacy Base Rate Floor
    [Documentation]    This test case calculates Simple ARR Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_SimpleARRRates\\Request_SARR010.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleARRRates\\Response_SARR010.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleARRRates\\Response_SARR010.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleARRRates\\Response_SARR010.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_SARRRates011_Legacy Base Rate Floor
    [Documentation]    This test case calculates Simple ARR Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_SimpleARRRates\\Request_SARR011.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleARRRates\\Response_SARR011.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleARRRates\\Response_SARR011.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleARRRates\\Response_SARR011.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_SARRRates012_Legacy Base Rate Floor
    [Documentation]    This test case calculates Simple ARR Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_SimpleARRRates\\Request_SARR012.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleARRRates\\Response_SARR012.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleARRRates\\Response_SARR012.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleARRRates\\Response_SARR012.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_SARRRates013_Legacy Base Rate Floor
    [Documentation]    This test case calculates Simple ARR Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_SimpleARRRates\\Request_SARR013.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleARRRates\\Response_SARR013.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleARRRates\\Response_SARR013.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleARRRates\\Response_SARR013.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_SARRRates014_Legacy Base Rate Floor
    [Documentation]    This test case calculates Simple ARR Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_SimpleARRRates\\Request_SARR014.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleARRRates\\Response_SARR014.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleARRRates\\Response_SARR014.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleARRRates\\Response_SARR014.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_SARRRates015_Legacy Base Rate Floor
    [Documentation]    This test case calculates Simple ARR Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_SimpleARRRates\\Request_SARR015.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleARRRates\\Response_SARR015.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleARRRates\\Response_SARR015.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleARRRates\\Response_SARR015.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_SARRRates016_Legacy Base Rate Floor
    [Documentation]    This test case calculates Simple ARR Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_SimpleARRRates\\Request_SARR016.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleARRRates\\Response_SARR016.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleARRRates\\Response_SARR016.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleARRRates\\Response_SARR016.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_SARRRates017_Legacy Base Rate Floor
    [Documentation]    This test case calculates Simple ARR Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_SimpleARRRates\\Request_SARR017.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleARRRates\\Response_SARR017.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleARRRates\\Response_SARR017.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleARRRates\\Response_SARR017.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_SARRRates018_Legacy Base Rate Floor
    [Documentation]    This test case calculates Simple ARR Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_SimpleARRRates\\Request_SARR018.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleARRRates\\Response_SARR018.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleARRRates\\Response_SARR018.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleARRRates\\Response_SARR018.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_SARRRates019_Legacy Base Rate Floor
    [Documentation]    This test case calculates Simple ARR Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_SimpleARRRates\\Request_SARR019.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleARRRates\\Response_SARR019.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleARRRates\\Response_SARR019.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleARRRates\\Response_SARR019.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_SARRRates020_Legacy Base Rate Floor
    [Documentation]    This test case calculates Simple ARR Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_SimpleARRRates\\Request_SARR020.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleARRRates\\Response_SARR020.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleARRRates\\Response_SARR020.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleARRRates\\Response_SARR020.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
