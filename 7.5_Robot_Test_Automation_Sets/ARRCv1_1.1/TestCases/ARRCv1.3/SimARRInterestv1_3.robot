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


POST_VALIDATE ARRCSARR001 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple ARR method
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimpleARRv1.3_Requests\\Request_ARRCSARR001.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimpleARR\\Response_ARRCSARR001.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimpleARRv1.3_Response\\Response_ARRCSARR001.json   ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimpleARRv1.3_Response\\Response_ARRCSARR001.json   ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimpleARR\\Response_ARRCSARR001.json    ${IGNORED_KEYS_JSON_COMPARE}
    

POST_VALIDATE ARRCSARR002 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple ARR method
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimpleARRv1.3_Requests\\Request_ARRCSARR002.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimpleARR\\Response_ARRCSARR002.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimpleARRv1.3_Response\\Response_ARRCSARR002.json   ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimpleARRv1.3_Response\\Response_ARRCSARR002.json   ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimpleARR\\Response_ARRCSARR002.json    ${IGNORED_KEYS_JSON_COMPARE}
    
POST_VALIDATE ARRCSARR003 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple ARR method
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimpleARRv1.3_Requests\\Request_ARRCSARR003.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimpleARR\\Response_ARRCSARR003.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimpleARRv1.3_Response\\Response_ARRCSARR003.json   ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimpleARRv1.3_Response\\Response_ARRCSARR003.json   ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimpleARR\\Response_ARRCSARR003.json    ${IGNORED_KEYS_JSON_COMPARE}
    
POST_VALIDATE ARRCSARR004 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple ARR method
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimpleARRv1.3_Requests\\Request_ARRCSARR004.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimpleARR\\Response_ARRCSARR004.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimpleARRv1.3_Response\\Response_ARRCSARR004.json   ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimpleARRv1.3_Response\\Response_ARRCSARR004.json   ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimpleARR\\Response_ARRCSARR004.json    ${IGNORED_KEYS_JSON_COMPARE}
    
POST_VALIDATE ARRCSARR005 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple ARR method
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimpleARRv1.3_Requests\\Request_ARRCSARR005.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimpleARR\\Response_ARRCSARR005.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimpleARRv1.3_Response\\Response_ARRCSARR005.json   ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimpleARRv1.3_Response\\Response_ARRCSARR005.json   ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimpleARR\\Response_ARRCSARR005.json    ${IGNORED_KEYS_JSON_COMPARE}
POST_VALIDATE ARRCSARR006 with All-in Rate Floor and Cap values 
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple ARR method
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimpleARRv1.3_Requests\\Request_ARRCSARR006.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimpleARR\\Response_ARRCSARR006.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimpleARRv1.3_Response\\Response_ARRCSARR006.json   ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimpleARRv1.3_Response\\Response_ARRCSARR006.json   ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimpleARR\\Response_ARRCSARR006.json    ${IGNORED_KEYS_JSON_COMPARE}
POST_VALIDATE ARRCSARR007 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple ARR method
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimpleARRv1.3_Requests\\Request_ARRCSARR007.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimpleARR\\Response_ARRCSARR007.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimpleARRv1.3_Response\\Response_ARRCSARR007.json   ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimpleARRv1.3_Response\\Response_ARRCSARR007.json   ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimpleARR\\Response_ARRCSARR007.json    ${IGNORED_KEYS_JSON_COMPARE}
POST_VALIDATE ARRCSARR008 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple ARR method
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimpleARRv1.3_Requests\\Request_ARRCSARR008.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimpleARR\\Response_ARRCSARR008.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimpleARRv1.3_Response\\Response_ARRCSARR008.json   ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimpleARRv1.3_Response\\Response_ARRCSARR008.json   ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimpleARR\\Response_ARRCSARR008.json    ${IGNORED_KEYS_JSON_COMPARE}
POST_VALIDATE ARRCSARR009 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple ARR method
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimpleARRv1.3_Requests\\Request_ARRCSARR009.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimpleARR\\Response_ARRCSARR009.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimpleARRv1.3_Response\\Response_ARRCSARR009.json   ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimpleARRv1.3_Response\\Response_ARRCSARR009.json   ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimpleARR\\Response_ARRCSARR009.json    ${IGNORED_KEYS_JSON_COMPARE}
POST_VALIDATE ARRCSARR010 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple ARR method
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimpleARRv1.3_Requests\\Request_ARRCSARR010.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimpleARR\\Response_ARRCSARR010.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimpleARRv1.3_Response\\Response_ARRCSARR010.json   ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimpleARRv1.3_Response\\Response_ARRCSARR010.json   ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimpleARR\\Response_ARRCSARR010.json    ${IGNORED_KEYS_JSON_COMPARE}
POST_VALIDATE ARRCSARR011 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple ARR method
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimpleARRv1.3_Requests\\Request_ARRCSARR011.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimpleARR\\Response_ARRCSARR011.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimpleARRv1.3_Response\\Response_ARRCSARR011.json   ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimpleARRv1.3_Response\\Response_ARRCSARR011.json   ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimpleARR\\Response_ARRCSARR011.json    ${IGNORED_KEYS_JSON_COMPARE}
POST_VALIDATE ARRCSARR012 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple ARR method
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimpleARRv1.3_Requests\\Request_ARRCSARR012.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimpleARR\\Response_ARRCSARR012.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimpleARRv1.3_Response\\Response_ARRCSARR012.json   ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimpleARRv1.3_Response\\Response_ARRCSARR012.json   ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimpleARR\\Response_ARRCSARR012.json    ${IGNORED_KEYS_JSON_COMPARE}
POST_VALIDATE ARRCSARR013 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple ARR method
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimpleARRv1.3_Requests\\Request_ARRCSARR013.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimpleARR\\Response_ARRCSARR013.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimpleARRv1.3_Response\\Response_ARRCSARR013.json   ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimpleARRv1.3_Response\\Response_ARRCSARR013.json   ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimpleARR\\Response_ARRCSARR013.json    ${IGNORED_KEYS_JSON_COMPARE}
POST_VALIDATE ARRCSARR014 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple ARR method
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimpleARRv1.3_Requests\\Request_ARRCSARR014.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimpleARR\\Response_ARRCSARR014.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimpleARRv1.3_Response\\Response_ARRCSARR014.json   ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimpleARRv1.3_Response\\Response_ARRCSARR014.json   ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimpleARR\\Response_ARRCSARR014.json    ${IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCSARR015 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple ARR method
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimpleARRv1.3_Requests\\Request_ARRCSARR015.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimpleARR\\Response_ARRCSARR015.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimpleARRv1.3_Response\\Response_ARRCSARR015.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimpleARR\\Response_ARRCSARR015.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
POST_VALIDATE ARRCSARR016 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple ARR method
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimpleARRv1.3_Requests\\Request_ARRCSARR016.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimpleARR\\Response_ARRCSARR016.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimpleARRv1.3_Response\\Response_ARRCSARR016.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimpleARR\\Response_ARRCSARR016.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
POST_VALIDATE ARRCSARR017 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple ARR method
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimpleARRv1.3_Requests\\Request_ARRCSARR017.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimpleARR\\Response_ARRCSARR017.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimpleARRv1.3_Response\\Response_ARRCSARR017.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimpleARR\\Response_ARRCSARR017.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
POST_VALIDATE ARRCSARR018 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple ARR method
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimpleARRv1.3_Requests\\Request_ARRCSARR018.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimpleARR\\Response_ARRCSARR018.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimpleARRv1.3_Response\\Response_ARRCSARR018.json   ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimpleARRv1.3_Response\\Response_ARRCSARR018.json   ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimpleARR\\Response_ARRCSARR018.json    ${IGNORED_KEYS_JSON_COMPARE}
POST_VALIDATE ARRCSARR019 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple ARR method
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimpleARRv1.3_Requests\\Request_ARRCSARR019.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimpleARR\\Response_ARRCSARR019.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimpleARRv1.3_Response\\Response_ARRCSARR019.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimpleARR\\Response_ARRCSARR019.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
POST_VALIDATE ARRCSARR020 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple ARR method
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimpleARRv1.3_Requests\\Request_ARRCSARR020.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimpleARR\\Response_ARRCSARR020.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimpleARRv1.3_Response\\Response_ARRCSARR020.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimpleARR\\Response_ARRCSARR020.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
POST_VALIDATE ARRCSARR021 with All-in Rate Floor and Cap values
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple ARR method
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimpleARRv1.3_Requests\\Request_ARRCSARR021.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimpleARR\\Response_ARRCSARR021.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimpleARRv1.3_Response\\Response_ARRCSARR021.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimpleARR\\Response_ARRCSARR021.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}