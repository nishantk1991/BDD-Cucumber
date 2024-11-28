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


POST_VALIDATE LIQSC36598DCI001- NCCR with CCR Rounding Applies
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily compounding method with CCR=Y method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQSC36598\\Request_DailyCompunding_Interest\\Request_DC001.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_DailyCompunding_Interest\\Response_DC001.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_DailyCompunding_Interest\\Response_DC001.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_DailyCompunding_Interest\\Response_DC001.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36598DCI002- NCCR with CCR Rounding Applies
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily compounding method with CCR=Y method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQSC36598\\Request_DailyCompunding_Interest\\Request_DC002.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_DailyCompunding_Interest\\Response_DC002.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_DailyCompunding_Interest\\Response_DC002.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_DailyCompunding_Interest\\Response_DC002.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

    
POST_VALIDATE LIQSC36598DCI003- NCCR with CCR Rounding Applies
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily compounding method with CCR=Y method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQSC36598\\Request_DailyCompunding_Interest\\Request_DC003.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_DailyCompunding_Interest\\Response_DC003.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_DailyCompunding_Interest\\Response_DC003.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_DailyCompunding_Interest\\Response_DC003.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36598DCI004- NCCR with CCR Rounding Applies
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily compounding method with CCR=Y method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQSC36598\\Request_DailyCompunding_Interest\\Request_DC004.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_DailyCompunding_Interest\\Response_DC004.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_DailyCompunding_Interest\\Response_DC004.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_DailyCompunding_Interest\\Response_DC004.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

    
POST_VALIDATE LIQSC36598DCI005- NCCR with CCR Rounding Applies
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily compounding method with CCR=Y method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQSC36598\\Request_DailyCompunding_Interest\\Request_DC005.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_DailyCompunding_Interest\\Response_DC005.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_DailyCompunding_Interest\\Response_DC005.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_DailyCompunding_Interest\\Response_DC005.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36598DCI006- NCCR with CCR Rounding Applies
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily compounding method with CCR=Y method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQSC36598\\Request_DailyCompunding_Interest\\Request_DC006.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_DailyCompunding_Interest\\Response_DC006.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_DailyCompunding_Interest\\Response_DC006.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_DailyCompunding_Interest\\Response_DC006.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36598DCI007- NCCR with CCR Rounding Applies
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily compounding method with CCR=Y method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQSC36598\\Request_DailyCompunding_Interest\\Request_DC007.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_DailyCompunding_Interest\\Response_DC007.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_DailyCompunding_Interest\\Response_DC007.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_DailyCompunding_Interest\\Response_DC007.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36598DCI008- NCCR with CCR Rounding Applies
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily compounding method with CCR=Y method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQSC36598\\Request_DailyCompunding_Interest\\Request_DC008.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_DailyCompunding_Interest\\Response_DC008.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_DailyCompunding_Interest\\Response_DC008.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_DailyCompunding_Interest\\Response_DC008.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36598DCI009- NCCR with CCR Rounding Applies
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily compounding method with CCR=Y method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQSC36598\\Request_DailyCompunding_Interest\\Request_DC009.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_DailyCompunding_Interest\\Response_DC009.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_DailyCompunding_Interest\\Response_DC009.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_DailyCompunding_Interest\\Response_DC009.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36598DCI010- NCCR with CCR Rounding Applies
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily compounding method with CCR=Y method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQSC36598\\Request_DailyCompunding_Interest\\Request_DC010.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_DailyCompunding_Interest\\Response_DC010.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_DailyCompunding_Interest\\Response_DC010.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_DailyCompunding_Interest\\Response_DC010.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36598DCI011- NCCR with CCR Rounding Applies
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily compounding method with CCR=Y method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQSC36598\\Request_DailyCompunding_Interest\\Request_DC011.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_DailyCompunding_Interest\\Response_DC011.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_DailyCompunding_Interest\\Response_DC011.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_DailyCompunding_Interest\\Response_DC011.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE} 

POST_VALIDATE LIQSC36598DCI012- NCCR with CCR Rounding Applies
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily compounding method with CCR=Y method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQSC36598\\Request_DailyCompunding_Interest\\Request_DC012.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_DailyCompunding_Interest\\Response_DC012.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_DailyCompunding_Interest\\Response_DC012.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_DailyCompunding_Interest\\Response_DC012.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36598DCI013- NCCR with CCR Rounding Applies
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily compounding method with CCR=Y method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQSC36598\\Request_DailyCompunding_Interest\\Request_DC013.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_DailyCompunding_Interest\\Response_DC013.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_DailyCompunding_Interest\\Response_DC013.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_DailyCompunding_Interest\\Response_DC013.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36598DCI014- NCCR with CCR Rounding Applies
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily compounding method with CCR=Y method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQSC36598\\Request_DailyCompunding_Interest\\Request_DC014.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_DailyCompunding_Interest\\Response_DC014.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_DailyCompunding_Interest\\Response_DC014.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_DailyCompunding_Interest\\Response_DC014.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36598DCI015- NCCR with CCR Rounding Applies
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily compounding method with CCR=Y method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQSC36598\\Request_DailyCompunding_Interest\\Request_DC015.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_DailyCompunding_Interest\\Response_DC015.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_DailyCompunding_Interest\\Response_DC015.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_DailyCompunding_Interest\\Response_DC015.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36598DCI016- NCCR with CCR Rounding Applies
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily compounding method with CCR=Y method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQSC36598\\Request_DailyCompunding_Interest\\Request_DC016.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_DailyCompunding_Interest\\Response_DC016.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_DailyCompunding_Interest\\Response_DC016.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_DailyCompunding_Interest\\Response_DC016.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36598DCI017- NCCR with CCR Rounding Applies
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily compounding method with CCR=Y method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQSC36598\\Request_DailyCompunding_Interest\\Request_DC017.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_DailyCompunding_Interest\\Response_DC017.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_DailyCompunding_Interest\\Response_DC017.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_DailyCompunding_Interest\\Response_DC017.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36598DCI018- NCCR with CCR Rounding Applies
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily compounding method with CCR=Y method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQSC36598\\Request_DailyCompunding_Interest\\Request_DC018.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_DailyCompunding_Interest\\Response_DC018.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_DailyCompunding_Interest\\Response_DC018.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_DailyCompunding_Interest\\Response_DC018.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36598DCI019- NCCR with CCR Rounding Applies
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily compounding method with CCR=Y method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQSC36598\\Request_DailyCompunding_Interest\\Request_DC019.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_DailyCompunding_Interest\\Response_DC019.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_DailyCompunding_Interest\\Response_DC019.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_DailyCompunding_Interest\\Response_DC019.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36598DCI020- NCCR with CCR Rounding Applies
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily compounding method with CCR=Y method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQSC36598\\Request_DailyCompunding_Interest\\Request_DC020.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_DailyCompunding_Interest\\Response_DC020.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_DailyCompunding_Interest\\Response_DC020.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_DailyCompunding_Interest\\Response_DC020.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
