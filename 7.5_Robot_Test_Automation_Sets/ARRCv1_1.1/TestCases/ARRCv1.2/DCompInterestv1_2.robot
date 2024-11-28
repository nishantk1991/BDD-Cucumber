*** Settings ***
Library    RequestsLibrary  
Library    JsonLibrary    
Library    String    
# Library    GenerateOidcToken
Library    BaselineComparator    

# Library    Collections   
# Library    OperatingSystem 
Variables    ../../ConfigFile/GlobalConfig.py
Resource    ../../ConfigFile/ImportFile.robot



Suite Teardown    Delete All Sessions

Test Setup    GIVEN VALID AUTHENTICATION TOKEN AND SESSION IS CREATED

*** Variables ***
@{IGNORED_KEYS_JSON_COMPARE}    Create List    comment    legalDisclaimer    lastUpdatedFromSource

${HEADERS}
${RESPONSE}
${API_REQUEST_FROM_FILE}



*** Test Cases ***


POST_VALIDATE ARRCE2EDCI_001 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily Compounding method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\DCInterest_Request\\Request_ARRCE2EDCI_001.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\DCInterest_Response\\Response_ARRCE2EDCI_001.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\DCInterest_Response\\Response_ARRCE2EDCI_001.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\DCInterest_Response\\Response_ARRCE2EDCI_001.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCE2EDCI_002 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily Compounding method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\DCInterest_Request\\Request_ARRCE2EDCI_002.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\DCInterest_Response\\Response_ARRCE2EDCI_002.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\DCInterest_Response\\Response_ARRCE2EDCI_002.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\DCInterest_Response\\Response_ARRCE2EDCI_002.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

    
POST_VALIDATE ARRCE2EDCI_003 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily Compounding method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\DCInterest_Request\\Request_ARRCE2EDCI_003.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\DCInterest_Response\\Response_ARRCE2EDCI_003.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\DCInterest_Response\\Response_ARRCE2EDCI_003.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\DCInterest_Response\\Response_ARRCE2EDCI_003.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCE2EDCI_004 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily Compounding method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\DCInterest_Request\\Request_ARRCE2EDCI_004.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\DCInterest_Response\\Response_ARRCE2EDCI_004.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\DCInterest_Response\\Response_ARRCE2EDCI_004.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\DCInterest_Response\\Response_ARRCE2EDCI_004.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

    
POST_VALIDATE ARRCE2EDCI_005 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily Compounding method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\DCInterest_Request\\Request_ARRCE2EDCI_005.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\DCInterest_Response\\Response_ARRCE2EDCI_005.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\DCInterest_Response\\Response_ARRCE2EDCI_005.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\DCInterest_Response\\Response_ARRCE2EDCI_005.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCE2EDCI_006 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily Compounding method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\DCInterest_Request\\Request_ARRCE2EDCI_006.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\DCInterest_Response\\Response_ARRCE2EDCI_006.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\DCInterest_Response\\Response_ARRCE2EDCI_006.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\DCInterest_Response\\Response_ARRCE2EDCI_006.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCE2EDCI_007 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily Compounding method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\DCInterest_Request\\Request_ARRCE2EDCI_007.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\DCInterest_Response\\Response_ARRCE2EDCI_007.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\DCInterest_Response\\Response_ARRCE2EDCI_007.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\DCInterest_Response\\Response_ARRCE2EDCI_007.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCE2EDCI_008 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily Compounding method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\DCInterest_Request\\Request_ARRCE2EDCI_008.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\DCInterest_Response\\Response_ARRCE2EDCI_008.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\DCInterest_Response\\Response_ARRCE2EDCI_008.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\DCInterest_Response\\Response_ARRCE2EDCI_008.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCE2EDCI_009 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily Compounding method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\DCInterest_Request\\Request_ARRCE2EDCI_009.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\DCInterest_Response\\Response_ARRCE2EDCI_009.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\DCInterest_Response\\Response_ARRCE2EDCI_009.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\DCInterest_Response\\Response_ARRCE2EDCI_009.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCE2EDCI_010 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily Compounding method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\DCInterest_Request\\Request_ARRCE2EDCI_010.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\DCInterest_Response\\Response_ARRCE2EDCI_010.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\DCInterest_Response\\Response_ARRCE2EDCI_010.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\DCInterest_Response\\Response_ARRCE2EDCI_010.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCE2EDCI_011 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily Compounding method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\DCInterest_Request\\Request_ARRCE2EDCI_011.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\DCInterest_Response\\Response_ARRCE2EDCI_011.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\DCInterest_Response\\Response_ARRCE2EDCI_011.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\DCInterest_Response\\Response_ARRCE2EDCI_011.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE} 

POST_VALIDATE ARRCE2EDCI_012 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily Compounding method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\DCInterest_Request\\Request_ARRCE2EDCI_012.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\DCInterest_Response\\Response_ARRCE2EDCI_012.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\DCInterest_Response\\Response_ARRCE2EDCI_012.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\DCInterest_Response\\Response_ARRCE2EDCI_012.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCE2EDCI_013 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily Compounding method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\DCInterest_Request\\Request_ARRCE2EDCI_013.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\DCInterest_Response\\Response_ARRCE2EDCI_013.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\DCInterest_Response\\Response_ARRCE2EDCI_013.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\DCInterest_Response\\Response_ARRCE2EDCI_013.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCE2EDCI_014 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily Compounding method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\DCInterest_Request\\Request_ARRCE2EDCI_014.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\DCInterest_Response\\Response_ARRCE2EDCI_014.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\DCInterest_Response\\Response_ARRCE2EDCI_014.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\DCInterest_Response\\Response_ARRCE2EDCI_014.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCE2EDCI_015 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily Compounding method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\DCInterest_Request\\Request_ARRCE2EDCI_015.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\DCInterest_Response\\Response_ARRCE2EDCI_015.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\DCInterest_Response\\Response_ARRCE2EDCI_015.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\DCInterest_Response\\Response_ARRCE2EDCI_015.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCE2EDCI_016 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily Compounding method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\DCInterest_Request\\Request_ARRCE2EDCI_016.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\DCInterest_Response\\Response_ARRCE2EDCI_016.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\DCInterest_Response\\Response_ARRCE2EDCI_016.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\DCInterest_Response\\Response_ARRCE2EDCI_016.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCE2EDCI_017 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily Compounding method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\DCInterest_Request\\Request_ARRCE2EDCI_017.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\DCInterest_Response\\Response_ARRCE2EDCI_017.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\DCInterest_Response\\Response_ARRCE2EDCI_017.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\DCInterest_Response\\Response_ARRCE2EDCI_017.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCE2EDCI_018 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily Compounding method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\DCInterest_Request\\Request_ARRCE2EDCI_018.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\DCInterest_Response\\Response_ARRCE2EDCI_018.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\DCInterest_Response\\Response_ARRCE2EDCI_018.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\DCInterest_Response\\Response_ARRCE2EDCI_018.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCE2EDCI_019 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily Compounding method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\DCInterest_Request\\Request_ARRCE2EDCI_019.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\DCInterest_Response\\Response_ARRCE2EDCI_019.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\DCInterest_Response\\Response_ARRCE2EDCI_019.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\DCInterest_Response\\Response_ARRCE2EDCI_019.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCE2EDCI_020 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily Compounding method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\DCInterest_Request\\Request_ARRCE2EDCI_020.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\DCInterest_Response\\Response_ARRCE2EDCI_020.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\DCInterest_Response\\Response_ARRCE2EDCI_020.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\DCInterest_Response\\Response_ARRCE2EDCI_020.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCE2EDCI_021 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily Compounding method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\DCInterest_Request\\Request_ARRCE2EDCI_021.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\DCInterest_Response\\Response_ARRCE2EDCI_021.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\DCInterest_Response\\Response_ARRCE2EDCI_021.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\DCInterest_Response\\Response_ARRCE2EDCI_021.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQ-117401 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily Compounding method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\DCInterest_Request\\Request_LIQ-117401.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\DCInterest_Response\\Response_LIQ-117401.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\DCInterest_Response\\Response_LIQ-117401.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\DCInterest_Response\\Response_LIQ-117401.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
