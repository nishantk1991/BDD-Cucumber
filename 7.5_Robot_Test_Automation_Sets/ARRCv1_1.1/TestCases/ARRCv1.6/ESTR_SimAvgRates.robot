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

GET_VALIDATE_ESTR_SAVG-Rates001_Real data test
    [Documentation]    This test case calculates Simple Average Rates for ESTR 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.6\\Request_ESTR_Rates\\ESTR_SAVG\\Request_SAVGESTRTC001.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_ESTR_Rates\\ESTR_SAVG\\Response_SAVGESTRTC001.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.6\\Response_ESTR_Rates\\ESTR_SAVG\\Response_SAVGESTRTC001.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_ESTR_Rates\\ESTR_SAVG\\Response_SAVGESTRTC001.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE_ESTR_SAVG-Rates002_Real data test
    [Documentation]    This test case calculates Simple Average Rates for ESTR 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.6\\Request_ESTR_Rates\\ESTR_SAVG\\Request_SAVGESTRTC002.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_ESTR_Rates\\ESTR_SAVG\\Response_SAVGESTRTC002.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.6\\Response_ESTR_Rates\\ESTR_SAVG\\Response_SAVGESTRTC002.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_ESTR_Rates\\ESTR_SAVG\\Response_SAVGESTRTC002.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE_ESTR_SAVG-Rates003_Real data test
    [Documentation]    This test case calculates Simple Average Rates for ESTR 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.6\\Request_ESTR_Rates\\ESTR_SAVG\\Request_SAVGESTRTC003.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_ESTR_Rates\\ESTR_SAVG\\Response_SAVGESTRTC003.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.6\\Response_ESTR_Rates\\ESTR_SAVG\\Response_SAVGESTRTC003.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_ESTR_Rates\\ESTR_SAVG\\Response_SAVGESTRTC003.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE_ESTR_SAVG-Rates004_Real data test
    [Documentation]    This test case calculates Simple Average Rates for ESTR 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.6\\Request_ESTR_Rates\\ESTR_SAVG\\Request_SAVGESTRTC004.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_ESTR_Rates\\ESTR_SAVG\\Response_SAVGESTRTC004.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.6\\Response_ESTR_Rates\\ESTR_SAVG\\Response_SAVGESTRTC004.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_ESTR_Rates\\ESTR_SAVG\\Response_SAVGESTRTC004.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE_ESTR_SAVG-Rates005_Real data test
    [Documentation]    This test case calculates Simple Average Rates for ESTR 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.6\\Request_ESTR_Rates\\ESTR_SAVG\\Request_SAVGESTRTC005.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_ESTR_Rates\\ESTR_SAVG\\Response_SAVGESTRTC005.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.6\\Response_ESTR_Rates\\ESTR_SAVG\\Response_SAVGESTRTC005.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_ESTR_Rates\\ESTR_SAVG\\Response_SAVGESTRTC005.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

