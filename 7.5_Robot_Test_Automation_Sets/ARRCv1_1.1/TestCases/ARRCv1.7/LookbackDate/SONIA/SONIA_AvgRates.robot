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

GET_VALIDATE_SONIA_CARates001_Real data test
    [Documentation]    This test case calculates Compounded Average Rates for SONIA 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.7\\Request_SONIA_Rates\\SONIA_CA\\Request_CASONIATC001.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_SONIA_Rates\\SONIA_CA\\Response_CASONIATC001.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.7\\Response_SONIA_Rates\\SONIA_CA\\Response_CASONIATC001.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_SONIA_Rates\\SONIA_CA\\Response_CASONIATC001.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


GET_VALIDATE_SONIA_CARates003_Real data test
    [Documentation]    This test case calculates Compounded Average Rates for SONIA 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.7\\Request_SONIA_Rates\\SONIA_CA\\Request_CASONIATC003.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_SONIA_Rates\\SONIA_CA\\Response_CASONIATC003.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.7\\Response_SONIA_Rates\\SONIA_CA\\Response_CASONIATC003.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_SONIA_Rates\\SONIA_CA\\Response_CASONIATC003.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE_SONIA_CARates004_Real data test
    [Documentation]    This test case calculates Compounded Average Rates for SONIA 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.7\\Request_SONIA_Rates\\SONIA_CA\\Request_CASONIATC004.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_SONIA_Rates\\SONIA_CA\\Response_CASONIATC004.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.7\\Response_SONIA_Rates\\SONIA_CA\\Response_CASONIATC004.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_SONIA_Rates\\SONIA_CA\\Response_CASONIATC004.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE_SONIA_CARates005_Real data test
    [Documentation]    This test case calculates Compounded Average Rates for SONIA 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.7\\Request_SONIA_Rates\\SONIA_CA\\Request_CASONIATC005.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_SONIA_Rates\\SONIA_CA\\Response_CASONIATC005.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.7\\Response_SONIA_Rates\\SONIA_CA\\Response_CASONIATC005.json    encoding=utf-8-sig

    ${IgnoreKeys}    Create List    comment    legalDisclaimer    lastUpdatedFromSource    dayCountConvention
    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_SONIA_Rates\\SONIA_CA\\Response_CASONIATC005.json    ${data}    ignored_keys=@{IgnoreKeys}


