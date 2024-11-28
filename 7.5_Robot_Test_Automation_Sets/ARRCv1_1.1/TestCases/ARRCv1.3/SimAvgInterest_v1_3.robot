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


POST_VALIDATE ARRCSAVGINT001 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Requests\\Request_ARRCSAVGINT001.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Response\\Response_ARRCSAVGINT001.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Response\\Response_ARRCSAVGINT001.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Response\\Response_ARRCSAVGINT001.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCSAVGINT002 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Requests\\Request_ARRCSAVGINT002.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Response\\Response_ARRCSAVGINT002.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Response\\Response_ARRCSAVGINT002.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Response\\Response_ARRCSAVGINT002.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

    
POST_VALIDATE ARRCSAVGINT003 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Requests\\Request_ARRCSAVGINT003.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Response\\Response_ARRCSAVGINT003.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Response\\Response_ARRCSAVGINT003.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Response\\Response_ARRCSAVGINT003.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCSAVGINT004 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Requests\\Request_ARRCSAVGINT004.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Response\\Response_ARRCSAVGINT004.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Response\\Response_ARRCSAVGINT004.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Response\\Response_ARRCSAVGINT004.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

    
POST_VALIDATE ARRCSAVGINT005 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Requests\\Request_ARRCSAVGINT005.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Response\\Response_ARRCSAVGINT005.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Response\\Response_ARRCSAVGINT005.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Response\\Response_ARRCSAVGINT005.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCSAVGINT006 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Requests\\Request_ARRCSAVGINT006.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Response\\Response_ARRCSAVGINT006.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Response\\Response_ARRCSAVGINT006.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Response\\Response_ARRCSAVGINT006.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCSAVGINT007 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Requests\\Request_ARRCSAVGINT007.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Response\\Response_ARRCSAVGINT007.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Response\\Response_ARRCSAVGINT007.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Response\\Response_ARRCSAVGINT007.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCSAVGINT008 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Requests\\Request_ARRCSAVGINT008.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Response\\Response_ARRCSAVGINT008.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Response\\Response_ARRCSAVGINT008.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Response\\Response_ARRCSAVGINT008.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCSAVGINT009 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Requests\\Request_ARRCSAVGINT009.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Response\\Response_ARRCSAVGINT009.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Response\\Response_ARRCSAVGINT009.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Response\\Response_ARRCSAVGINT009.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCSAVGINT010 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Requests\\Request_ARRCSAVGINT010.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Response\\Response_ARRCSAVGINT010.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Response\\Response_ARRCSAVGINT010.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Response\\Response_ARRCSAVGINT010.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCSAVGINT011 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Requests\\Request_ARRCSAVGINT011.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Response\\Response_ARRCSAVGINT011.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Response\\Response_ARRCSAVGINT011.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Response\\Response_ARRCSAVGINT011.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE} 

POST_VALIDATE ARRCSAVGINT012 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Requests\\Request_ARRCSAVGINT012.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Response\\Response_ARRCSAVGINT012.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Response\\Response_ARRCSAVGINT012.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Response\\Response_ARRCSAVGINT012.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCSAVGINT013 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Requests\\Request_ARRCSAVGINT013.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Response\\Response_ARRCSAVGINT013.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Response\\Response_ARRCSAVGINT013.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Response\\Response_ARRCSAVGINT013.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCSAVGINT014 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Requests\\Request_ARRCSAVGINT014.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Response\\Response_ARRCSAVGINT014.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Response\\Response_ARRCSAVGINT014.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Response\\Response_ARRCSAVGINT014.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCSAVGINT015 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Requests\\Request_ARRCSAVGINT015.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Response\\Response_ARRCSAVGINT015.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Response\\Response_ARRCSAVGINT015.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Response\\Response_ARRCSAVGINT015.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCSAVGINT016 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Requests\\Request_ARRCSAVGINT016.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Response\\Response_ARRCSAVGINT016.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Response\\Response_ARRCSAVGINT016.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Response\\Response_ARRCSAVGINT016.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCSAVGINT017 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Requests\\Request_ARRCSAVGINT017.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Response\\Response_ARRCSAVGINT017.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Response\\Response_ARRCSAVGINT017.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Response\\Response_ARRCSAVGINT017.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCSAVGINT018 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Requests\\Request_ARRCSAVGINT018.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Response\\Response_ARRCSAVGINT018.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Response\\Response_ARRCSAVGINT018.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Response\\Response_ARRCSAVGINT018.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCSAVGINT019 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Requests\\Request_ARRCSAVGINT019.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Response\\Response_ARRCSAVGINT019.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Response\\Response_ARRCSAVGINT019.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Response\\Response_ARRCSAVGINT019.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCSAVGINT020 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Requests\\Request_ARRCSAVGINT020.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Response\\Response_ARRCSAVGINT020.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Response\\Response_ARRCSAVGINT020.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Response\\Response_ARRCSAVGINT020.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCSAVGINT021 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Requests\\Request_ARRCSAVGINT021.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Response\\Response_ARRCSAVGINT021.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Response\\Response_ARRCSAVGINT021.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimAvgInterestv1.3_Response\\Response_ARRCSAVGINT021.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
