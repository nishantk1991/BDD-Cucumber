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

#Test Setup    GIVEN VALID AUTHENTICATION TOKEN AND SESSION IS CREATED
Test Setup    Given VALID SESSION IS CREATED FOR REST REQUESTS FOR ARRC ADAPTER    ${APIMUrl}    ${alias}

*** Variables ***
@{IGNORED_KEYS_JSON_COMPARE}    Create List    comment    legalDisclaimer    lastUpdatedFromSource

${HEADERS}
${RESPONSE}
${API_REQUEST_FROM_FILE}



*** Test Cases ***
POST_VALIDATE ESTR_CA_NoPay_TC001- - Non Payment scenarios - Real time_Adapter
    [Documentation]    This test case sends POST request and gives rates and Interest with compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.7\\Request_ESTR_Interest\\FloorCompounded\\ESTR_CAI\\Request_ADPTRCAIESTRTC001.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_ESTR_Interest\\FloorCompounded\\ESTR_CAI\\Response_ADPTRCAIESTRTC001.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.7\\Response_ESTR_Interest\\FloorCompounded\\ESTR_CAI\\Response_ADPTRCAIESTRTC001.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_ESTR_Interest\\FloorCompounded\\ESTR_CAI\\Response_ADPTRCAIESTRTC001.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}    ignore_type=True


POST_VALIDATE ESTR_CA_NoPay_TC001- - Non Payment scenarios - Real time
    [Documentation]    This test case sends POST request and gives rates and Interest with compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.7\\Request_ESTR_Interest\\FloorCompounded\\ESTR_CAI\\Request_CAIESTRTC001_NoPay.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_ESTR_Interest\\FloorCompounded\\ESTR_CAI\\Response_CAIESTRTC001_NoPay.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.7\\Response_ESTR_Interest\\FloorCompounded\\ESTR_CAI\\Response_CAIESTRTC001_NoPay.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_ESTR_Interest\\FloorCompounded\\ESTR_CAI\\Response_CAIESTRTC001_NoPay.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}    ignore_type=True


POST_VALIDATE ESTR_CA_NoPay_TC003- - Non Payment scenarios - Real time
    [Documentation]    This test case sends POST request and gives rates and Interest with compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.7\\Request_ESTR_Interest\\FloorCompounded\\ESTR_CAI\\Request_CAIESTRTC003_NoPay.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_ESTR_Interest\\FloorCompounded\\ESTR_CAI\\Response_CAIESTRTC003_NoPay.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.7\\Response_ESTR_Interest\\FloorCompounded\\ESTR_CAI\\Response_CAIESTRTC003_NoPay.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_ESTR_Interest\\FloorCompounded\\ESTR_CAI\\Response_CAIESTRTC003_NoPay.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


POST_VALIDATE ESTR_CA_IntPay_TC002- Payment scenarios - Realtime
    [Documentation]    This test case sends POST request and gives rates and Interest with compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.7\\Request_ESTR_Interest\\FloorCompounded\\ESTR_CAI\\Request_CAIESTRTC002.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_ESTR_Interest\\FloorCompounded\\ESTR_CAI\\Response_CAIESTRTC002.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.7\\Response_ESTR_Interest\\FloorCompounded\\ESTR_CAI\\Response_CAIESTRTC002.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_ESTR_Interest\\FloorCompounded\\ESTR_CAI\\Response_CAIESTRTC002.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
