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

GET_VALIDATE ARRC_RATES_LIQ119813CA001_CALCULATE Average Compounded Rate
    [Documentation]    This test case calculates Compounded Average Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ119813CARates\\Request_LIQ119813CA001.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813CARates\\Response_LIQ119813CA001.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813CARates\\Response_LIQ119813CA001.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813CARates\\Response_LIQ119813CA001.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_RATES_LIQ119813CA002_CALCULATE Average Compounded Rate
    [Documentation]    This test case calculates Compounded Average Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ119813CARates\\Request_LIQ119813CA002.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813CARates\\Response_LIQ119813CA002.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813CARates\\Response_LIQ119813CA002.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813CARates\\Response_LIQ119813CA002.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_RATES_LIQ119813CA003_CALCULATE Average Compounded Rate
    [Documentation]    This test case calculates Compounded Average Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ119813CARates\\Request_LIQ119813CA003.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813CARates\\Response_LIQ119813CA003.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813CARates\\Response_LIQ119813CA003.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813CARates\\Response_LIQ119813CA003.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_RATES_LIQ119813CA004_CALCULATE Average Compounded Rate
    [Documentation]    This test case calculates Compounded Average Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ119813CARates\\Request_LIQ119813CA004.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813CARates\\Response_LIQ119813CA004.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813CARates\\Response_LIQ119813CA004.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813CARates\\Response_LIQ119813CA004.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_RATES_LIQ119813CA005_CALCULATE Average Compounded Rate
    [Documentation]    This test case calculates Compounded Average Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ119813CARates\\Request_LIQ119813CA005.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813CARates\\Response_LIQ119813CA005.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813CARates\\Response_LIQ119813CA005.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813CARates\\Response_LIQ119813CA005.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_RATES_LIQ119813CA006_CALCULATE Average Compounded Rate
    [Documentation]    This test case calculates Compounded Average Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ119813CARates\\Request_LIQ119813CA006.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813CARates\\Response_LIQ119813CA006.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813CARates\\Response_LIQ119813CA006.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813CARates\\Response_LIQ119813CA006.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_RATES_LIQ119813CA007_CALCULATE Average Compounded Rate
    [Documentation]    This test case calculates Compounded Average Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ119813CARates\\Request_LIQ119813CA007.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813CARates\\Response_LIQ119813CA007.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813CARates\\Response_LIQ119813CA007.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813CARates\\Response_LIQ119813CA007.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_RATES_LIQ119813CA008_CALCULATE Average Compounded Rate
    [Documentation]    This test case calculates Compounded Average Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ119813CARates\\Request_LIQ119813CA008.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813CARates\\Response_LIQ119813CA008.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813CARates\\Response_LIQ119813CA008.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813CARates\\Response_LIQ119813CA008.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_RATES_LIQ119813CA010_CALCULATE Average Compounded Rate
    [Documentation]    This test case calculates Compounded Average Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ119813CARates\\Request_LIQ119813CA010.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813CARates\\Response_LIQ119813CA010.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813CARates\\Response_LIQ119813CA010.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813CARates\\Response_LIQ119813CA010.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_RATES_LIQ119813CA011_CALCULATE Average Compounded Rate
    [Documentation]    This test case calculates Compounded Average Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ119813CARates\\Request_LIQ119813CA011.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813CARates\\Response_LIQ119813CA011.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813CARates\\Response_LIQ119813CA011.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813CARates\\Response_LIQ119813CA011.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

