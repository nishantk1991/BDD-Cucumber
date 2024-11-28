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

POST_VALIDATE SONIA_CA_NoPay_TC001- - Non Payment scenarios - Real time
    [Documentation]    This test case sends POST request and gives rates and Interest with compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.7\\Request_SONIA_Interest\\FloorCompLBRF\\SONIA_CAI_DCRN\\Request_CAISONIATC001.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_SONIA_Interest\\FloorCompLBRF\\SONIA_CAI_DCRN\\Response_CAISONIATC001.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.7\\Response_SONIA_Interest\\FloorCompLBRF\\SONIA_CAI_DCRN\\Response_CAISONIATC001.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_SONIA_Interest\\FloorCompLBRF\\SONIA_CAI_DCRN\\Response_CAISONIATC001.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


POST_VALIDATE SONIA_DCRN_NoPay_TC001- Non Payment scenarios - Realtime
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily compounding method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.7\\Request_SONIA_Interest\\FloorCompLBRF\\SONIA_CAI_DCRN\\Request_DCRNSONIATC001.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_SONIA_Interest\\FloorCompLBRF\\SONIA_CAI_DCRN\\Response_DCRNSONIATC001.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.7\\Response_SONIA_Interest\\FloorCompLBRF\\SONIA_CAI_DCRN\\Response_DCRNSONIATC001.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_SONIA_Interest\\FloorCompLBRF\\SONIA_CAI_DCRN\\Response_DCRNSONIATC001.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

    