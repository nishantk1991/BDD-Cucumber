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


POST_VALIDATE ARRC_E2ESIMAINT_001 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple ARR method
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\SimARRInterestv1.2_Requests\\Request_ARRC_E2ESIMAINT_001.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2\\Response_ARRC_E2ESIMAINT_001.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2_Response\\Response_ARRC_E2ESIMAINT_001.json   ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2_Response\\Response_ARRC_E2ESIMAINT_001.json   ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2\\Response_ARRC_E2ESIMAINT_001.json    ${IGNORED_KEYS_JSON_COMPARE}
    

POST_VALIDATE ARRC_E2ESIMAINT_002 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple ARR method
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\SimARRInterestv1.2_Requests\\Request_ARRC_E2ESIMAINT_002.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2\\Response_ARRC_E2ESIMAINT_002.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2_Response\\Response_ARRC_E2ESIMAINT_002.json   ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2_Response\\Response_ARRC_E2ESIMAINT_002.json   ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2\\Response_ARRC_E2ESIMAINT_002.json    ${IGNORED_KEYS_JSON_COMPARE}
    
POST_VALIDATE ARRC_E2ESIMAINT_003 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple ARR method
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\SimARRInterestv1.2_Requests\\Request_ARRC_E2ESIMAINT_003.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2\\Response_ARRC_E2ESIMAINT_003.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2_Response\\Response_ARRC_E2ESIMAINT_003.json   ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2_Response\\Response_ARRC_E2ESIMAINT_003.json   ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2\\Response_ARRC_E2ESIMAINT_003.json    ${IGNORED_KEYS_JSON_COMPARE}
    
POST_VALIDATE ARRC_E2ESIMAINT_004 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple ARR method
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\SimARRInterestv1.2_Requests\\Request_ARRC_E2ESIMAINT_004.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2\\Response_ARRC_E2ESIMAINT_004.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2_Response\\Response_ARRC_E2ESIMAINT_004.json   ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2_Response\\Response_ARRC_E2ESIMAINT_004.json   ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2\\Response_ARRC_E2ESIMAINT_004.json    ${IGNORED_KEYS_JSON_COMPARE}
    
POST_VALIDATE ARRC_E2ESIMAINT_005 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple ARR method
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\SimARRInterestv1.2_Requests\\Request_ARRC_E2ESIMAINT_005.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2\\Response_ARRC_E2ESIMAINT_005.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2_Response\\Response_ARRC_E2ESIMAINT_005.json   ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2_Response\\Response_ARRC_E2ESIMAINT_005.json   ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2\\Response_ARRC_E2ESIMAINT_005.json    ${IGNORED_KEYS_JSON_COMPARE}
POST_VALIDATE ARRC_E2ESIMAINT_006 with All-in Rate Floor and Cap values 
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple ARR method
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\SimARRInterestv1.2_Requests\\Request_ARRC_E2ESIMAINT_006.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2\\Response_ARRC_E2ESIMAINT_006.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2_Response\\Response_ARRC_E2ESIMAINT_006.json   ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2_Response\\Response_ARRC_E2ESIMAINT_006.json   ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2\\Response_ARRC_E2ESIMAINT_006.json    ${IGNORED_KEYS_JSON_COMPARE}
POST_VALIDATE ARRC_E2ESIMAINT_007 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple ARR method
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\SimARRInterestv1.2_Requests\\Request_ARRC_E2ESIMAINT_007.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2\\Response_ARRC_E2ESIMAINT_007.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2_Response\\Response_ARRC_E2ESIMAINT_007.json   ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2_Response\\Response_ARRC_E2ESIMAINT_007.json   ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2\\Response_ARRC_E2ESIMAINT_007.json    ${IGNORED_KEYS_JSON_COMPARE}
POST_VALIDATE ARRC_E2ESIMAINT_008 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple ARR method
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\SimARRInterestv1.2_Requests\\Request_ARRC_E2ESIMAINT_008.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2\\Response_ARRC_E2ESIMAINT_008.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2_Response\\Response_ARRC_E2ESIMAINT_008.json   ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2_Response\\Response_ARRC_E2ESIMAINT_008.json   ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2\\Response_ARRC_E2ESIMAINT_008.json    ${IGNORED_KEYS_JSON_COMPARE}
POST_VALIDATE ARRC_E2ESIMAINT_009 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple ARR method
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\SimARRInterestv1.2_Requests\\Request_ARRC_E2ESIMAINT_009.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2\\Response_ARRC_E2ESIMAINT_009.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2_Response\\Response_ARRC_E2ESIMAINT_009.json   ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2_Response\\Response_ARRC_E2ESIMAINT_009.json   ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2\\Response_ARRC_E2ESIMAINT_009.json    ${IGNORED_KEYS_JSON_COMPARE}
POST_VALIDATE ARRC_E2ESIMAINT_010 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple ARR method
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\SimARRInterestv1.2_Requests\\Request_ARRC_E2ESIMAINT_010.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2\\Response_ARRC_E2ESIMAINT_010.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2_Response\\Response_ARRC_E2ESIMAINT_010.json   ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2_Response\\Response_ARRC_E2ESIMAINT_010.json   ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2\\Response_ARRC_E2ESIMAINT_010.json    ${IGNORED_KEYS_JSON_COMPARE}
POST_VALIDATE ARRC_E2ESIMAINT_011 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple ARR method
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\SimARRInterestv1.2_Requests\\Request_ARRC_E2ESIMAINT_011.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2\\Response_ARRC_E2ESIMAINT_011.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2_Response\\Response_ARRC_E2ESIMAINT_011.json   ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2_Response\\Response_ARRC_E2ESIMAINT_011.json   ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2\\Response_ARRC_E2ESIMAINT_011.json    ${IGNORED_KEYS_JSON_COMPARE}
POST_VALIDATE ARRC_E2ESIMAINT_012 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple ARR method
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\SimARRInterestv1.2_Requests\\Request_ARRC_E2ESIMAINT_012.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2\\Response_ARRC_E2ESIMAINT_012.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2_Response\\Response_ARRC_E2ESIMAINT_012.json   ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2_Response\\Response_ARRC_E2ESIMAINT_012.json   ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2\\Response_ARRC_E2ESIMAINT_012.json    ${IGNORED_KEYS_JSON_COMPARE}
POST_VALIDATE ARRC_E2ESIMAINT_013 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple ARR method
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\SimARRInterestv1.2_Requests\\Request_ARRC_E2ESIMAINT_013.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2\\Response_ARRC_E2ESIMAINT_013.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2_Response\\Response_ARRC_E2ESIMAINT_013.json   ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2_Response\\Response_ARRC_E2ESIMAINT_013.json   ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2\\Response_ARRC_E2ESIMAINT_013.json    ${IGNORED_KEYS_JSON_COMPARE}
POST_VALIDATE ARRC_E2ESIMAINT_014 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple ARR method
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\SimARRInterestv1.2_Requests\\Request_ARRC_E2ESIMAINT_014.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2\\Response_ARRC_E2ESIMAINT_014.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2_Response\\Response_ARRC_E2ESIMAINT_014.json   ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2_Response\\Response_ARRC_E2ESIMAINT_014.json   ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2\\Response_ARRC_E2ESIMAINT_014.json    ${IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRC_E2ESIMAINT_015 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple ARR method
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\SimARRInterestv1.2_Requests\\Request_ARRC_E2ESIMAINT_015.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2\\Response_ARRC_E2ESIMAINT_015.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2_Response\\Response_ARRC_E2ESIMAINT_015.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2\\Response_ARRC_E2ESIMAINT_015.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
POST_VALIDATE ARRC_E2ESIMAINT_016 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple ARR method
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\SimARRInterestv1.2_Requests\\Request_ARRC_E2ESIMAINT_016.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2\\Response_ARRC_E2ESIMAINT_016.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2_Response\\Response_ARRC_E2ESIMAINT_016.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2\\Response_ARRC_E2ESIMAINT_016.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
POST_VALIDATE ARRC_E2ESIMAINT_017 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple ARR method
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\SimARRInterestv1.2_Requests\\Request_ARRC_E2ESIMAINT_017.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2\\Response_ARRC_E2ESIMAINT_017.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2_Response\\Response_ARRC_E2ESIMAINT_017.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2\\Response_ARRC_E2ESIMAINT_017.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
POST_VALIDATE ARRC_E2ESIMAINT_018 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple ARR method
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\SimARRInterestv1.2_Requests\\Request_ARRC_E2ESIMAINT_018.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2\\Response_ARRC_E2ESIMAINT_018.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2_Response\\Response_ARRC_E2ESIMAINT_018.json   ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2_Response\\Response_ARRC_E2ESIMAINT_018.json   ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2\\Response_ARRC_E2ESIMAINT_018.json    ${IGNORED_KEYS_JSON_COMPARE}
POST_VALIDATE ARRC_E2ESIMAINT_019 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple ARR method
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\SimARRInterestv1.2_Requests\\Request_ARRC_E2ESIMAINT_019.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2\\Response_ARRC_E2ESIMAINT_019.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2_Response\\Response_ARRC_E2ESIMAINT_019.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2\\Response_ARRC_E2ESIMAINT_019.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
POST_VALIDATE ARRC_E2ESIMAINT_020 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple ARR method
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\SimARRInterestv1.2_Requests\\Request_ARRC_E2ESIMAINT_020.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2\\Response_ARRC_E2ESIMAINT_020.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2_Response\\Response_ARRC_E2ESIMAINT_020.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2\\Response_ARRC_E2ESIMAINT_020.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
POST_VALIDATE ARRC_E2ESIMAINT_021 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple ARR method
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\SimARRInterestv1.2_Requests\\Request_ARRC_E2ESIMAINT_021.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2\\Response_ARRC_E2ESIMAINT_021.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2_Response\\Response_ARRC_E2ESIMAINT_021.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\SimARRInterestv1.2\\Response_ARRC_E2ESIMAINT_021.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}