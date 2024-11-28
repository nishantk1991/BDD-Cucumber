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
@{IGNORED_KEYS_JSON_COMPARE}    Create List    comment    legalDisclaimer    lastUpdatedFromSource    compoundingFactor    

${HEADERS}
${RESPONSE}
${API_REQUEST_FROM_FILE}



*** Test Cases ***


POST_VALIDATE SOFR_DC_CCR=N_IntPay_TC004- Payment scenarios - Realtime
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily Compounding method when CCR='false'
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.7\\Request_SOFR_Interest\\FloorCompounded\\SOFR_DCI_CCRN\\Request_DCISOFRTC004.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_SOFR_Interest\\FloorCompounded\\SOFR_DCI_CCRN\\Response_DCISOFRTC004.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.7\\Response_SOFR_Interest\\FloorCompounded\\SOFR_DCI_CCRN\\Response_DCISOFRTC004.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_SOFR_Interest\\FloorCompounded\\SOFR_DCI_CCRN\\Response_DCISOFRTC004.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

    
POST_VALIDATE SOFR_DC_CCR=N_IntPay_TC005- Payment scenarios - Realtime
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily Compounding method when CCR='false'
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.7\\Request_SOFR_Interest\\FloorCompounded\\SOFR_DCI_CCRN\\Request_DCISOFRTC005.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_SOFR_Interest\\FloorCompounded\\SOFR_DCI_CCRN\\Response_DCISOFRTC005.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.7\\Response_SOFR_Interest\\FloorCompounded\\SOFR_DCI_CCRN\\Response_DCISOFRTC005.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_SOFR_Interest\\FloorCompounded\\SOFR_DCI_CCRN\\Response_DCISOFRTC005.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
