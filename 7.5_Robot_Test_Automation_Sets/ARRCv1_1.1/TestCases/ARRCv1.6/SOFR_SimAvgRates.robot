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

GET_VALIDATE_SOFR_SAVG-Rates001_Real data test
    [Documentation]    This test case calculates Simple Average Rates for SOFR 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.6\\Request_SOFR_Rates\\SOFR_SAVG\\Request_SAVGSOFRTC001.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Rates\\SOFR_SAVG\\Response_SAVGSOFRTC001.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Rates\\SOFR_SAVG\\Response_SAVGSOFRTC001.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Rates\\SOFR_SAVG\\Response_SAVGSOFRTC001.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE_SOFR_SAVG-Rates002_Real data test
    [Documentation]    This test case calculates Simple Average Rates for SOFR 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.6\\Request_SOFR_Rates\\SOFR_SAVG\\Request_SAVGSOFRTC002.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Rates\\SOFR_SAVG\\Response_SAVGSOFRTC002.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Rates\\SOFR_SAVG\\Response_SAVGSOFRTC002.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Rates\\SOFR_SAVG\\Response_SAVGSOFRTC002.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE_SOFR_SAVG-Rates003_Real data test
    [Documentation]    This test case calculates Simple Average Rates for SOFR 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.6\\Request_SOFR_Rates\\SOFR_SAVG\\Request_SAVGSOFRTC003.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Rates\\SOFR_SAVG\\Response_SAVGSOFRTC003.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Rates\\SOFR_SAVG\\Response_SAVGSOFRTC003.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Rates\\SOFR_SAVG\\Response_SAVGSOFRTC003.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE_SOFR_SAVG-Rates004_Real data test
    [Documentation]    This test case calculates Simple Average Rates for SOFR 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.6\\Request_SOFR_Rates\\SOFR_SAVG\\Request_SAVGSOFRTC004.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Rates\\SOFR_SAVG\\Response_SAVGSOFRTC004.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Rates\\SOFR_SAVG\\Response_SAVGSOFRTC004.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Rates\\SOFR_SAVG\\Response_SAVGSOFRTC004.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE_SOFR_SAVG-Rates005_Real data test
    [Documentation]    This test case calculates Simple Average Rates for SOFR 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.6\\Request_SOFR_Rates\\SOFR_SAVG\\Request_SAVGSOFRTC005.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Rates\\SOFR_SAVG\\Response_SAVGSOFRTC005.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Rates\\SOFR_SAVG\\Response_SAVGSOFRTC005.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Rates\\SOFR_SAVG\\Response_SAVGSOFRTC005.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE_SOFR_SAVG-Rates006_Real data test
    [Documentation]    This test case calculates Simple Average Rates for SOFR 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.6\\Request_SOFR_Rates\\SOFR_SAVG\\Request_SAVGSOFRTC006.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Rates\\SOFR_SAVG\\Response_SAVGSOFRTC006.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Rates\\SOFR_SAVG\\Response_SAVGSOFRTC006.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Rates\\SOFR_SAVG\\Response_SAVGSOFRTC006.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE_SOFR_SAVG-Rates007_Real data test
    [Documentation]    This test case calculates Simple Average Rates for SOFR 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.6\\Request_SOFR_Rates\\SOFR_SAVG\\Request_SAVGSOFRTC007.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Rates\\SOFR_SAVG\\Response_SAVGSOFRTC007.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Rates\\SOFR_SAVG\\Response_SAVGSOFRTC007.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Rates\\SOFR_SAVG\\Response_SAVGSOFRTC007.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

