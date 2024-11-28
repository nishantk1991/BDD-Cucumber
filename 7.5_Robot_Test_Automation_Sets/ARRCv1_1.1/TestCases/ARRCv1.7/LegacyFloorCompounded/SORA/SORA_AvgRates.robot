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

GET_VALIDATE_SORA_CARates001_Real data test
    [Documentation]    This test case calculates Compounded Average Rates for SORA 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.7\\Request_SORA_Rates\\FloorCompLBRF\\SORA_CAI_DCRN\\Request_CASORATC001.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_SORA_Rates\\FloorCompLBRF\\SORA_CAI_DCRN\\Response_CASORATC001.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.7\\Response_SORA_Rates\\FloorCompLBRF\\SORA_CAI_DCRN\\Response_CASORATC001.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_SORA_Rates\\FloorCompLBRF\\SORA_CAI_DCRN\\Response_CASORATC001.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


GET_VALIDATE_SORA_CARates003_Real data test
    [Documentation]    This test case calculates Compounded Average Rates for SORA 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.7\\Request_SORA_Rates\\FloorCompLBRF\\SORA_CAI_DCRN\\Request_CASORATC003.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_SORA_Rates\\FloorCompLBRF\\SORA_CAI_DCRN\\Response_CASORATC003.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.7\\Response_SORA_Rates\\FloorCompLBRF\\SORA_CAI_DCRN\\Response_CASORATC003.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_SORA_Rates\\FloorCompLBRF\\SORA_CAI_DCRN\\Response_CASORATC003.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


GET_VALIDATE_SORA_CARates002_Real data test
    [Documentation]    This test case calculates Compounded Average Rates for SORA 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.7\\Request_SORA_Rates\\FloorCompLBRF\\SORA_CAI_DCRN\\Request_CASORATC002.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_SORA_Rates\\FloorCompLBRF\\SORA_CAI_DCRN\\Response_CASORATC002.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.7\\Response_SORA_Rates\\FloorCompLBRF\\SORA_CAI_DCRN\\Response_CASORATC002.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_SORA_Rates\\FloorCompLBRF\\SORA_CAI_DCRN\\Response_CASORATC002.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
