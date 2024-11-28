*** Settings ***
Library    RequestsLibrary  
Library    JsonLibrary    
Library    String    
# Library    GenerateOidcToken
Library    BaselineComparator    

# Library    Collections   
# Library    OperatingSystem 
Variables    ../../../../ConfigFile/GlobalConfig.py
Resource    ../../../../ConfigFile/ImportFile.robot


Suite Teardown    Delete All Sessions

Test Setup    GIVEN VALID AUTHENTICATION TOKEN AND SESSION IS CREATED

*** Variables ***
@{IGNORED_KEYS_JSON_COMPARE}    Create List    comment    legalDisclaimer    lastUpdatedFromSource

${HEADERS}
${RESPONSE}
${API_REQUEST_FROM_FILE}


*** Test Cases ***

POST_VALIDATE TONAR_CA_NoPay_TC002- - Non Payment scenarios - Real time
    [Documentation]    This test case sends POST request and gives rates and Interest with compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.7\\Request_TONAR_Interest\\FloorCompounded\\TONAR_CAI\\Request_CAITONARTC002_NoPay.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_TONAR_Interest\\FloorCompounded\\TONAR_CAI\\Response_CAITONARTC002_NoPay.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.7\\Response_TONAR_Interest\\FloorCompounded\\TONAR_CAI\\Response_CAITONARTC002_NoPay.json    encoding=cp1252

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_TONAR_Interest\\FloorCompounded\\TONAR_CAI\\Response_CAITONARTC002_NoPay.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

 
POST_VALIDATE TONAR_CA_IntPay_TC001- Payment scenarios - Realtime
    [Documentation]    This test case sends POST request and gives rates and Interest with compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.7\\Request_TONAR_Interest\\FloorCompounded\\TONAR_CAI\\Request_CAITONARTC001.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_TONAR_Interest\\FloorCompounded\\TONAR_CAI\\Response_CAITONARTC001.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.7\\Response_TONAR_Interest\\FloorCompounded\\TONAR_CAI\\Response_CAITONARTC001.json    encoding=cp1252

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_TONAR_Interest\\FloorCompounded\\TONAR_CAI\\Response_CAITONARTC001.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

  
POST_VALIDATE TONAR_CA_IntPay_TC003- Payment scenarios - Realtime
    [Documentation]    This test case sends POST request and gives rates and Interest with compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.7\\Request_TONAR_Interest\\FloorCompounded\\TONAR_CAI\\Request_CAITONARTC003.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_TONAR_Interest\\FloorCompounded\\TONAR_CAI\\Response_CAITONARTC003.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.7\\Response_TONAR_Interest\\FloorCompounded\\TONAR_CAI\\Response_CAITONARTC003.json    encoding=cp1252

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_TONAR_Interest\\FloorCompounded\\TONAR_CAI\\Response_CAITONARTC003.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

