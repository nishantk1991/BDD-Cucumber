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

GET_VALIDATE_SOFR_SARRRates001_Real data test
    [Documentation]    This test case calculates Simple ARR Rates  for SOFR 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.6\\Request_SOFR_Rates\\SOFR_SARR\\Request_SARRSOFRTC001.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Rates\\SOFR_SARR\\Response_SARRSOFRTC001.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Rates\\SOFR_SARR\\Response_SARRSOFRTC001.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Rates\\SOFR_SARR\\Response_SARRSOFRTC001.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE_SOFR_SARRRates002_Real data test
    [Documentation]    This test case calculates Simple ARR Rates  for SOFR 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.6\\Request_SOFR_Rates\\SOFR_SARR\\Request_SARRSOFRTC002.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Rates\\SOFR_SARR\\Response_SARRSOFRTC002.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Rates\\SOFR_SARR\\Response_SARRSOFRTC002.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Rates\\SOFR_SARR\\Response_SARRSOFRTC002.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE_SOFR_SARRRates003_Real data test
    [Documentation]    This test case calculates Simple ARR Rates  for SOFR 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.6\\Request_SOFR_Rates\\SOFR_SARR\\Request_SARRSOFRTC003.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Rates\\SOFR_SARR\\Response_SARRSOFRTC003.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Rates\\SOFR_SARR\\Response_SARRSOFRTC003.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Rates\\SOFR_SARR\\Response_SARRSOFRTC003.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE_SOFR_SARRRates004_Real data test
    [Documentation]    This test case calculates Simple ARR Rates  for SOFR 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.6\\Request_SOFR_Rates\\SOFR_SARR\\Request_SARRSOFRTC004.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Rates\\SOFR_SARR\\Response_SARRSOFRTC004.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Rates\\SOFR_SARR\\Response_SARRSOFRTC004.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Rates\\SOFR_SARR\\Response_SARRSOFRTC004.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE_SOFR_SARRRates005_Real data test
    [Documentation]    This test case calculates Simple ARR Rates  for SOFR 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.6\\Request_SOFR_Rates\\SOFR_SARR\\Request_SARRSOFRTC005.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Rates\\SOFR_SARR\\Response_SARRSOFRTC005.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Rates\\SOFR_SARR\\Response_SARRSOFRTC005.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Rates\\SOFR_SARR\\Response_SARRSOFRTC005.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE_SOFR_SARRRates006_Real data test
    [Documentation]    This test case calculates Simple ARR Rates  for SOFR 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.6\\Request_SOFR_Rates\\SOFR_SARR\\Request_SARRSOFRTC006.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Rates\\SOFR_SARR\\Response_SARRSOFRTC006.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Rates\\SOFR_SARR\\Response_SARRSOFRTC006.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Rates\\SOFR_SARR\\Response_SARRSOFRTC006.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE_SOFR_SARRRates007_Real data test
    [Documentation]    This test case calculates Simple ARR Rates  for SOFR 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.6\\Request_SOFR_Rates\\SOFR_SARR\\Request_SARRSOFRTC007.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Rates\\SOFR_SARR\\Response_SARRSOFRTC007.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Rates\\SOFR_SARR\\Response_SARRSOFRTC007.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Rates\\SOFR_SARR\\Response_SARRSOFRTC007.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
