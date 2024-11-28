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


POST_VALIDATE LIQ36599DCI001- Legacy Base Rate Floor and Interest Rounding Changes
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily compounding method with CCR=N (Default) method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_DailyCompInterest\\Request_DCInterest001.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompInterest\\Response_DCInterest001.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompInterest\\Response_DCInterest001.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompInterest\\Response_DCInterest001.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQ36599DCI002- Legacy Base Rate Floor and Interest Rounding Changes
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily compounding method with CCR=N (Default) method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_DailyCompInterest\\Request_DCInterest002.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompInterest\\Response_DCInterest002.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompInterest\\Response_DCInterest002.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompInterest\\Response_DCInterest002.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

    
POST_VALIDATE LIQ36599DCI003- Legacy Base Rate Floor and Interest Rounding Changes
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily compounding method with CCR=N (Default) method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_DailyCompInterest\\Request_DCInterest003.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompInterest\\Response_DCInterest003.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompInterest\\Response_DCInterest003.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompInterest\\Response_DCInterest003.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQ36599DCI004- Legacy Base Rate Floor and Interest Rounding Changes
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily compounding method with CCR=N (Default) method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_DailyCompInterest\\Request_DCInterest004.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompInterest\\Response_DCInterest004.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompInterest\\Response_DCInterest004.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompInterest\\Response_DCInterest004.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

    
POST_VALIDATE LIQ36599DCI005- Legacy Base Rate Floor and Interest Rounding Changes
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily compounding method with CCR=N (Default) method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_DailyCompInterest\\Request_DCInterest005.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompInterest\\Response_DCInterest005.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompInterest\\Response_DCInterest005.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompInterest\\Response_DCInterest005.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQ36599DCI006- Legacy Base Rate Floor and Interest Rounding Changes
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily compounding method with CCR=N (Default) method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_DailyCompInterest\\Request_DCInterest006.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompInterest\\Response_DCInterest006.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompInterest\\Response_DCInterest006.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompInterest\\Response_DCInterest006.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQ36599DCI007- Legacy Base Rate Floor and Interest Rounding Changes
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily compounding method with CCR=N (Default) method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_DailyCompInterest\\Request_DCInterest007.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompInterest\\Response_DCInterest007.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompInterest\\Response_DCInterest007.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompInterest\\Response_DCInterest007.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQ36599DCI008- Legacy Base Rate Floor and Interest Rounding Changes
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily compounding method with CCR=N (Default) method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_DailyCompInterest\\Request_DCInterest008.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompInterest\\Response_DCInterest008.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompInterest\\Response_DCInterest008.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompInterest\\Response_DCInterest008.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQ36599DCI009- Legacy Base Rate Floor and Interest Rounding Changes
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily compounding method with CCR=N (Default) method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_DailyCompInterest\\Request_DCInterest009.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompInterest\\Response_DCInterest009.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompInterest\\Response_DCInterest009.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompInterest\\Response_DCInterest009.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQ36599DCI010- Legacy Base Rate Floor and Interest Rounding Changes
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily compounding method with CCR=N (Default) method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_DailyCompInterest\\Request_DCInterest010.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompInterest\\Response_DCInterest010.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompInterest\\Response_DCInterest010.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompInterest\\Response_DCInterest010.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQ36599DCI011- Legacy Base Rate Floor and Interest Rounding Changes
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily compounding method with CCR=N (Default) method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_DailyCompInterest\\Request_DCInterest011.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompInterest\\Response_DCInterest011.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompInterest\\Response_DCInterest011.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompInterest\\Response_DCInterest011.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE} 

POST_VALIDATE LIQ36599DCI012- Legacy Base Rate Floor and Interest Rounding Changes
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily compounding method with CCR=N (Default) method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_DailyCompInterest\\Request_DCInterest012.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompInterest\\Response_DCInterest012.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompInterest\\Response_DCInterest012.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompInterest\\Response_DCInterest012.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQ36599DCI013- Legacy Base Rate Floor and Interest Rounding Changes
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily compounding method with CCR=N (Default) method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_DailyCompInterest\\Request_DCInterest013.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompInterest\\Response_DCInterest013.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompInterest\\Response_DCInterest013.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompInterest\\Response_DCInterest013.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQ36599DCI014- Legacy Base Rate Floor and Interest Rounding Changes
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily compounding method with CCR=N (Default) method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_DailyCompInterest\\Request_DCInterest014.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompInterest\\Response_DCInterest014.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompInterest\\Response_DCInterest014.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompInterest\\Response_DCInterest014.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQ36599DCI015- Legacy Base Rate Floor and Interest Rounding Changes
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily compounding method with CCR=N (Default) method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_DailyCompInterest\\Request_DCInterest015.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompInterest\\Response_DCInterest015.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompInterest\\Response_DCInterest015.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompInterest\\Response_DCInterest015.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQ36599DCI016- Legacy Base Rate Floor and Interest Rounding Changes
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily compounding method with CCR=N (Default) method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_DailyCompInterest\\Request_DCInterest016.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompInterest\\Response_DCInterest016.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompInterest\\Response_DCInterest016.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompInterest\\Response_DCInterest016.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQ36599DCI017- Legacy Base Rate Floor and Interest Rounding Changes
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily compounding method with CCR=N (Default) method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_DailyCompInterest\\Request_DCInterest017.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompInterest\\Response_DCInterest017.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompInterest\\Response_DCInterest017.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompInterest\\Response_DCInterest017.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQ36599DCI018- Legacy Base Rate Floor and Interest Rounding Changes
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily compounding method with CCR=N (Default) method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_DailyCompInterest\\Request_DCInterest018.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompInterest\\Response_DCInterest018.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompInterest\\Response_DCInterest018.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompInterest\\Response_DCInterest018.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQ36599DCI019- Legacy Base Rate Floor and Interest Rounding Changes
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily compounding method with CCR=N (Default) method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_DailyCompInterest\\Request_DCInterest019.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompInterest\\Response_DCInterest019.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompInterest\\Response_DCInterest019.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompInterest\\Response_DCInterest019.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQ36599DCI020- Legacy Base Rate Floor and Interest Rounding Changes
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily compounding method with CCR=N (Default) method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_DailyCompInterest\\Request_DCInterest020.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompInterest\\Response_DCInterest020.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompInterest\\Response_DCInterest020.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_DailyCompInterest\\Response_DCInterest020.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
