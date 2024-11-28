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

GET_VALIDATE_TONAR_DC_CCRN_Rates001_Real data test
    [Documentation]    This test case calculates Daily compounding Rates for TONAR when CCR= 'false'
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.7\\Request_TONAR_Rates\\TONAR_DC_CCRN\\Request_DCTONARTC001.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_TONAR_Rates\\TONAR_DC_CCRN\\Response_DCTONARTC001.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.7\\Response_TONAR_Rates\\TONAR_DC_CCRN\\Response_DCTONARTC001.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_TONAR_Rates\\TONAR_DC_CCRN\\Response_DCTONARTC001.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE_TONAR_DC_CCRN_Rates002_Real data test
    [Documentation]    This test case calculates Daily compounding Rates for TONAR when CCR= 'false'
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.7\\Request_TONAR_Rates\\TONAR_DC_CCRN\\Request_DCTONARTC002.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_TONAR_Rates\\TONAR_DC_CCRN\\Response_DCTONARTC002.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.7\\Response_TONAR_Rates\\TONAR_DC_CCRN\\Response_DCTONARTC002.json    encoding=utf-8-sig

    ${IgnoreKeys}    Create List    comment    legalDisclaimer    lastUpdatedFromSource    dayCountConvention
    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_TONAR_Rates\\TONAR_DC_CCRN\\Response_DCTONARTC002.json    ${data}    ignored_keys=@{IgnoreKeys}

GET_VALIDATE_TONAR_DC_CCRN_Rates003_Real data test
    [Documentation]    This test case calculates Daily compounding Rates for TONAR when CCR= 'false'
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.7\\Request_TONAR_Rates\\TONAR_DC_CCRN\\Request_DCTONARTC003.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_TONAR_Rates\\TONAR_DC_CCRN\\Response_DCTONARTC003.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.7\\Response_TONAR_Rates\\TONAR_DC_CCRN\\Response_DCTONARTC003.json    encoding=utf-8-sig

    ${IgnoreKeys}    Create List    comment    legalDisclaimer    lastUpdatedFromSource    dayCountConvention
    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_TONAR_Rates\\TONAR_DC_CCRN\\Response_DCTONARTC003.json    ${data}    ignored_keys=@{IgnoreKeys}

GET_VALIDATE_TONAR_DC_CCRN_Rates004_Real data test
    [Documentation]    This test case calculates Daily compounding Rates for TONAR when CCR= 'false'
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.7\\Request_TONAR_Rates\\TONAR_DC_CCRN\\Request_DCTONARTC004.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_TONAR_Rates\\TONAR_DC_CCRN\\Response_DCTONARTC004.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.7\\Response_TONAR_Rates\\TONAR_DC_CCRN\\Response_DCTONARTC004.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_TONAR_Rates\\TONAR_DC_CCRN\\Response_DCTONARTC004.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
