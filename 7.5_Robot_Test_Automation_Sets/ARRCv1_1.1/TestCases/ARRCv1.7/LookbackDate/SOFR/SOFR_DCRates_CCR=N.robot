*** Settings ***
Library    RequestsLibrary  
Library    JsonLibrary    
Library    String    
# Library    GenerateOidcToken
Library    BaselineComparator    

# Library    Collections   
# Library    OperatingSystem 
Variables      /7.5_Robot_Test_Automation_Sets/ARRCv1_1.1/ConfigFile/GlobalConfig.py
Resource      /7.5_Robot_Test_Automation_Sets/ARRCv1_1.1/ConfigFile/ImportFile.robot



Suite Teardown    Delete All Sessions

Test Setup    GIVEN VALID AUTHENTICATION TOKEN AND SESSION IS CREATED

*** Variables ***
@{IGNORED_KEYS_JSON_COMPARE}    Create List    comment    legalDisclaimer    lastUpdatedFromSource    

${HEADERS}
${RESPONSE}
${API_REQUEST_FROM_FILE}



*** Test Cases ***

GET_VALIDATE_SOFR_DC_CCRN_Rates001_Real data test
    [Documentation]    This test case calculates Daily compounding Rates for SOFR when CCR= 'false'
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.7\\Request_SOFR_Rates\\SOFR_DC_CCRN\\Request_DCSOFRTC001.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_SOFR_Rates\\SOFR_DC_CCRN\\Response_DCSOFRTC001.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.7\\Response_SOFR_Rates\\SOFR_DC_CCRN\\Response_DCSOFRTC001.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_SOFR_Rates\\SOFR_DC_CCRN\\Response_DCSOFRTC001.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE_SOFR_DC_CCRN_Rates005_Real data test
    [Documentation]    This test case calculates Daily compounding Rates for SOFR when CCR= 'false'
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.7\\Request_SOFR_Rates\\SOFR_DC_CCRN\\Request_DCSOFRTC005.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_SOFR_Rates\\SOFR_DC_CCRN\\Response_DCSOFRTC005.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.7\\Response_SOFR_Rates\\SOFR_DC_CCRN\\Response_DCSOFRTC005.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_SOFR_Rates\\SOFR_DC_CCRN\\Response_DCSOFRTC005.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE_SOFR_DC_CCRN_Rates006_Real data test
    [Documentation]    This test case calculates Daily compounding Rates for SOFR when CCR= 'false'
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.7\\Request_SOFR_Rates\\SOFR_DC_CCRN\\Request_DCSOFRTC006.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_SOFR_Rates\\SOFR_DC_CCRN\\Response_DCSOFRTC006.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.7\\Response_SOFR_Rates\\SOFR_DC_CCRN\\Response_DCSOFRTC006.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_SOFR_Rates\\SOFR_DC_CCRN\\Response_DCSOFRTC006.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE_SOFR_DC_CCRN_Rates007_Real data test
    [Documentation]    This test case calculates Daily compounding Rates for SOFR when CCR= 'false'
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.7\\Request_SOFR_Rates\\SOFR_DC_CCRN\\Request_DCSOFRTC007.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_SOFR_Rates\\SOFR_DC_CCRN\\Response_DCSOFRTC007.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.7\\Response_SOFR_Rates\\SOFR_DC_CCRN\\Response_DCSOFRTC007.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.7\\Response_SOFR_Rates\\SOFR_DC_CCRN\\Response_DCSOFRTC007.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

