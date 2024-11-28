*** Settings ***
Library    RequestsLibrary  
Library    JsonLibrary    
Library    String    
# Library    GenerateOidcToken
Library    BaselineComparator    

# Library    Collections   
# Library    OperatingSystem 
Variables    /7.5_Robot_Test_Automation_Sets/ARRCv1_1.1/ConfigFile/GlobalConfig.py
Resource    /7.5_Robot_Test_Automation_Sets/ARRCv1_1.1/ConfigFile/ImportFile.robot



Suite Teardown    Delete All Sessions

Test Setup    GIVEN VALID AUTHENTICATION TOKEN AND SESSION IS CREATED

*** Variables ***
@{IGNORED_KEYS_JSON_COMPARE}    Create List    comment    legalDisclaimer    lastUpdatedFromSource    

${HEADERS}
${RESPONSE}
${API_REQUEST_FROM_FILE}



*** Test Cases ***

GET_VALIDATE_ESTR_CARates001_Real data test
    [Documentation]    This test case calculates Compounded Average Rates for ESTR 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.7\\Request_ESTR_Rates\\FloorCompounded\\ESTR_CA\\Request_CAESTRTC001.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_ESTR_Rates\\FloorCompounded\\ESTR_CA\\Response_CAESTRTC001.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.7\\Response_ESTR_Rates\\FloorCompounded\\ESTR_CA\\Response_CAESTRTC001.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_ESTR_Rates\\FloorCompounded\\ESTR_CA\\Response_CAESTRTC001.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE_ESTR_CARates002_Real data test
    [Documentation]    This test case calculates Compounded Average Rates for ESTR 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.7\\Request_ESTR_Rates\\FloorCompounded\\ESTR_CA\\Request_CAESTRTC002.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_ESTR_Rates\\FloorCompounded\\ESTR_CA\\Response_CAESTRTC002.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.7\\Response_ESTR_Rates\\FloorCompounded\\ESTR_CA\\Response_CAESTRTC002.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_ESTR_Rates\\FloorCompounded\\ESTR_CA\\Response_CAESTRTC002.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE_ESTR_CARates003_Real data test
    [Documentation]    This test case calculates Compounded Average Rates for ESTR 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.7\\Request_ESTR_Rates\\FloorCompounded\\ESTR_CA\\Request_CAESTRTC003.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_ESTR_Rates\\FloorCompounded\\ESTR_CA\\Response_CAESTRTC003.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.7\\Response_ESTR_Rates\\FloorCompounded\\ESTR_CA\\Response_CAESTRTC003.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_ESTR_Rates\\FloorCompounded\\ESTR_CA\\Response_CAESTRTC003.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

