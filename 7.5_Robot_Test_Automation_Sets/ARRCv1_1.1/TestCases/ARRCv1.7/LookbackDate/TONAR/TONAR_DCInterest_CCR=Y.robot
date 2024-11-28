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


POST_VALIDATE TONAR_DC_CCR=Y_NoPay_TC001- - Non Payment scenarios - Real time
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily Compounding method when CCR='true'
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.7\\Request_TONAR_Interest\\TONAR_DCI_CCRY\\Request_DCITONARTC001_NoPay.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_TONAR_Interest\\TONAR_DCI_CCRY\\Response_DCITONARTC001_NoPay.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.7\\Response_TONAR_Interest\\TONAR_DCI_CCRY\\Response_DCITONARTC001_NoPay.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_TONAR_Interest\\TONAR_DCI_CCRY\\Response_DCITONARTC001_NoPay.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE TONAR_DC_CCR=Y_NoPay_TC004- - Non Payment scenarios - Real time
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily Compounding method when CCR='true'
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.7\\Request_TONAR_Interest\\TONAR_DCI_CCRY\\Request_DCITONARTC004_NoPay.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_TONAR_Interest\\TONAR_DCI_CCRY\\Response_DCITONARTC004_NoPay.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.7\\Response_TONAR_Interest\\TONAR_DCI_CCRY\\Response_DCITONARTC004_NoPay.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_TONAR_Interest\\TONAR_DCI_CCRY\\Response_DCITONARTC004_NoPay.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

 
POST_VALIDATE TONAR_DC_CCR=Y_IntPay_TC001- Payment scenarios - Realtime
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily Compounding method when CCR='true'
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.7\\Request_TONAR_Interest\\TONAR_DCI_CCRY\\Request_DCITONARTC001.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_TONAR_Interest\\TONAR_DCI_CCRY\\Response_DCITONARTC001.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.7\\Response_TONAR_Interest\\TONAR_DCI_CCRY\\Response_DCITONARTC001.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_TONAR_Interest\\TONAR_DCI_CCRY\\Response_DCITONARTC001.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE TONAR_DC_CCR=Y_IntPay_TC002- Payment scenarios - Realtime
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily Compounding method when CCR='true'
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.7\\Request_TONAR_Interest\\TONAR_DCI_CCRY\\Request_DCITONARTC002.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_TONAR_Interest\\TONAR_DCI_CCRY\\Response_DCITONARTC002.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.7\\Response_TONAR_Interest\\TONAR_DCI_CCRY\\Response_DCITONARTC002.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_TONAR_Interest\\TONAR_DCI_CCRY\\Response_DCITONARTC002.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

    
POST_VALIDATE TONAR_DC_CCR=Y_IntPay_TC003- Payment scenarios - Realtime
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily Compounding method when CCR='true'
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.7\\Request_TONAR_Interest\\TONAR_DCI_CCRY\\Request_DCITONARTC003.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_TONAR_Interest\\TONAR_DCI_CCRY\\Response_DCITONARTC003.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.7\\Response_TONAR_Interest\\TONAR_DCI_CCRY\\Response_DCITONARTC003.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_TONAR_Interest\\TONAR_DCI_CCRY\\Response_DCITONARTC003.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE TONAR_DC_CCR=Y_IntPay_TC004- Payment scenarios - Realtime
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily Compounding method when CCR='true'
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.7\\Request_TONAR_Interest\\TONAR_DCI_CCRY\\Request_DCITONARTC004.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_TONAR_Interest\\TONAR_DCI_CCRY\\Response_DCITONARTC004.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.7\\Response_TONAR_Interest\\TONAR_DCI_CCRY\\Response_DCITONARTC004.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_TONAR_Interest\\TONAR_DCI_CCRY\\Response_DCITONARTC004.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

