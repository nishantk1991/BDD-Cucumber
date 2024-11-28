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

TC001_POST_VALIDATE AVERAGE INTEREST_FOR_ARRCE2EINTCA_001 WITH LOOKBACK APPLIED
    [Documentation]    This testcase covers scenario where startDate=2020-04-10 endDate=2020-05-29 with lookback > lockout=0
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\AverageInterestv1.2_Request\\Request_ARRCE2EINTCA_001.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\API_ARRCE2EINTCA_001.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\Response_ARRCE2EINTCA_001.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\API_ARRCE2EINTCA_001.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

TC002_POST_VALIDATE AVERAGE INTEREST_FOR_ARRCE2EINTCA_002 WITH LOOKBACK APPLIED
    [Documentation]    This testcase covers scenario where startDate=2020-04-10 endDate=2020-05-29 with lookback > lockout=0
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\AverageInterestv1.2_Request\\Request_ARRCE2EINTCA_002.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\API_ARRCE2EINTCA_002.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\Response_ARRCE2EINTCA_002.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\API_ARRCE2EINTCA_002.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

TC003_POST_VALIDATE AVERAGE INTEREST_FOR_ARRCE2EINTCA_003 WITH LOCKOUT APPLIED
    [Documentation]    This testcase covers scenario where startDate=2020-05-02 endDate=2020-06-01 with lockout > lookback=0
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\AverageInterestv1.2_Request\\Request_ARRCE2EINTCA_003.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\API_ARRCE2EINTCA_003.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\Response_ARRCE2EINTCA_003.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\API_ARRCE2EINTCA_003.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


TC004_POST_VALIDATE AVERAGE INTEREST_FOR_ARRCE2EINTCA_004 WITH LOCKOUT APPLIED
    [Documentation]    This testcase covers scenario where startDate=2020-05-02 endDate=2020-06-01 with lockout > lookback=0
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\AverageInterestv1.2_Request\\Request_ARRCE2EINTCA_004.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\API_ARRCE2EINTCA_004.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\Response_ARRCE2EINTCA_004.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\API_ARRCE2EINTCA_004.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

TC005_POST_VALIDATE AVERAGE INTEREST_FOR_ARRCE2EINTCA_005 WITH LOOKBACK APPLIED
    [Documentation]    This testcase covers scenario where startDate=2020-03-02 endDate=2020-05-29 with lookback > lockout=0
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\AverageInterestv1.2_Request\\Request_ARRCE2EINTCA_005.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\API_ARRCE2EINTCA_005.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\Response_ARRCE2EINTCA_005.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\API_ARRCE2EINTCA_005.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

TC006_POST_VALIDATE AVERAGE INTEREST_FOR_ARRCE2EINTCA_006 WITH LOOKBACK APPLIED
    [Documentation]    This testcase covers scenario where startDate=2020-03-02 endDate=2020-05-29 with lookback > lockout=0
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\AverageInterestv1.2_Request\\Request_ARRCE2EINTCA_006.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\API_ARRCE2EINTCA_006.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\Response_ARRCE2EINTCA_006.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\API_ARRCE2EINTCA_006.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

TC007_POST_VALIDATE AVERAGE INTEREST_FOR_ARRCE2EINTCA_007 WITH LOCKOUT AND LOOKBACK APPLIED
    [Documentation]    This testcase covers scenario where startDate=2020-04-27 endDate=2020-05-30 with lookback < lockout
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\AverageInterestv1.2_Request\\Request_ARRCE2EINTCA_007.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\API_ARRCE2EINTCA_007.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\Response_ARRCE2EINTCA_007.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\API_ARRCE2EINTCA_007.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

TC008_POST_VALIDATE AVERAGE INTEREST_FOR_ARRCE2EINTCA_008 WITH LOCKOUT AND LOOKBACK APPLIED
    [Documentation]    This testcase covers scenario where startDate=2020-04-27 endDate=2020-05-30 with lookback < lockout
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\AverageInterestv1.2_Request\\Request_ARRCE2EINTCA_008.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\API_ARRCE2EINTCA_008.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\Response_ARRCE2EINTCA_008.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\API_ARRCE2EINTCA_008.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

TC009_POST_VALIDATE AVERAGE INTEREST_FOR_ARRCE2EINTCA_009 WITH LOCKOUT AND LOOKBACK APPLIED
    [Documentation]    This testcase covers scenario where startDate=2020-04-27 endDate=2020-05-30 with lookback < lockout
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\AverageInterestv1.2_Request\\Request_ARRCE2EINTCA_009.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\API_ARRCE2EINTCA_009.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\Response_ARRCE2EINTCA_009.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\API_ARRCE2EINTCA_009.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

TC010_POST_VALIDATE AVERAGE INTEREST_FOR_ARRCE2EINTCA_010 WITH LOCKOUT AND LOOKBACK APPLIED
    [Documentation]    This testcase covers scenario where startDate=2020-04-27 endDate=2020-05-30 with lockout < lookback
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\AverageInterestv1.2_Request\\Request_ARRCE2EINTCA_010.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\API_ARRCE2EINTCA_010.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\Response_ARRCE2EINTCA_010.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\API_ARRCE2EINTCA_010.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

TC011_POST_VALIDATE AVERAGE INTEREST_FOR_ARRCE2EINTCA_011 WITH LOCKOUT AND LOOKBACK APPLIED
    [Documentation]    This testcase covers scenario where startDate=2020-04-27 endDate=2020-05-30 with lockout > lookback
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\AverageInterestv1.2_Request\\Request_ARRCE2EINTCA_011.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\API_ARRCE2EINTCA_011.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\Response_ARRCE2EINTCA_011.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\API_ARRCE2EINTCA_011.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


TC012_POST_VALIDATE AVERAGE INTEREST_FOR_ARRCE2EINTCA_012 WITH LOCKOUT APPLIED
    [Documentation]    This testcase covers scenario where startDate=2020-01-01 endDate=2020-05-25 with lockout > lookback=0
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\AverageInterestv1.2_Request\\Request_ARRCE2EINTCA_012.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\API_ARRCE2EINTCA_012.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\Response_ARRCE2EINTCA_012.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\API_ARRCE2EINTCA_012.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

TC013_POST_VALIDATE AVERAGE INTEREST_FOR_ARRCE2EINTCA_013 WITH LOCKOUT APPLIED
    [Documentation]    This testcase covers scenario where startDate=2020-01-01 endDate=2020-05-25 with lockout > lookback=0
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\AverageInterestv1.2_Request\\Request_ARRCE2EINTCA_013.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\API_ARRCE2EINTCA_013.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\Response_ARRCE2EINTCA_013.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\API_ARRCE2EINTCA_013.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

TC014_POST_VALIDATE AVERAGE INTEREST_FOR_ARRCE2EINTCA_014 WITH LOCKOUT APPLIED
    [Documentation]    This testcase covers scenario where startDate=2020-01-01 endDate=2020-05-26 with lockout > lookback=0
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\AverageInterestv1.2_Request\\Request_ARRCE2EINTCA_014.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\API_ARRCE2EINTCA_014.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\Response_ARRCE2EINTCA_014.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\API_ARRCE2EINTCA_014.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

TC015_POST_VALIDATE AVERAGE INTEREST_FOR_ARRCE2EINTCA_015 WITH LOCKOUT AND LOOKBACK APPLIED
    [Documentation]    This testcase covers scenario where startDate=2020-02-01 endDate=2020-05-31 with lookback > lockout
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\AverageInterestv1.2_Request\\Request_ARRCE2EINTCA_015.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\API_ARRCE2EINTCA_015.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\Response_ARRCE2EINTCA_015.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\API_ARRCE2EINTCA_015.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


TC016_POST_VALIDATE AVERAGE INTEREST_FOR_ARRCE2EINTCA_016 WITH LOCKOUT AND LOOKBACK APPLIED
    [Documentation]    This testcase covers scenario where startDate=2020-02-01 endDate=2020-05-31 with lookback > lockout
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\AverageInterestv1.2_Request\\Request_ARRCE2EINTCA_016.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\API_ARRCE2EINTCA_016.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\Response_ARRCE2EINTCA_016.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\API_ARRCE2EINTCA_016.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


TC017_POST_VALIDATE AVERAGE INTEREST_FOR_ARRCE2EINTCA_017 WITH LOCKOUT AND LOOKBACK APPLIED
    [Documentation]    This testcase covers scenario where startDate=2020-02-01 endDate=2020-05-31 with lookback > lockout
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\AverageInterestv1.2_Request\\Request_ARRCE2EINTCA_017.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\API_ARRCE2EINTCA_017.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\Response_ARRCE2EINTCA_017.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\API_ARRCE2EINTCA_017.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


TC018_POST_VALIDATE AVERAGE INTEREST_FOR_ARRCE2EINTCA_018 WITH LOOKBACK APPLIED
    [Documentation]    This testcase covers scenario where startDate=2020-05-01 endDate=2020-06-01 with lookback > lockout=0
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\AverageInterestv1.2_Request\\Request_ARRCE2EINTCA_018.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\API_ARRCE2EINTCA_018.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\Response_ARRCE2EINTCA_018.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\API_ARRCE2EINTCA_018.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


TC019_POST_VALIDATE AVERAGE INTEREST_FOR_ARRCE2EINTCA_019 WITH LOOKBACK APPLIED
    [Documentation]    This testcase covers scenario where startDate=2020-05-01 endDate=2020-06-01 with lookback > lockout=0
 
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\AverageInterestv1.2_Request\\Request_ARRCE2EINTCA_019.txt
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\API_ARRCE2EINTCA_019.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\Response_ARRCE2EINTCA_019.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\API_ARRCE2EINTCA_019.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


TC020_POST_VALIDATE AVERAGE INTEREST_FOR_ARRCE2EINTCA_020 WITH LOCKOUT AND LOOKBACK APPLIED
    [Documentation]    This testcase covers scenario where startDate=2020-03-01 endDate=2020-05-30 with lockout > lookback
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\AverageInterestv1.2_Request\\Request_ARRCE2EINTCA_020.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\API_ARRCE2EINTCA_020.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\Response_ARRCE2EINTCA_020.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\API_ARRCE2EINTCA_020.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

TC021_POST_VALIDATE AVERAGE INTEREST_FOR_ARRCE2EINTCA_021 WITH LOCKOUT AND LOOKBACK APPLIED
    [Documentation]    This testcase covers scenario where startDate=2020-03-01 endDate=2020-05-30 with lookback > lockout
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\AverageInterestv1.2_Request\\Request_ARRCE2EINTCA_021.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\API_ARRCE2EINTCA_021.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\Response_ARRCE2EINTCA_021.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\API_ARRCE2EINTCA_021.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

TC022_POST_VALIDATE AVERAGE INTEREST_FOR_ARRCE2EINTCA_022 WITH LOCKOUT APPLIED
    [Documentation]    This testcase covers scenario where startDate=2020-02-29 endDate=2020-05-24 with lockout > lookback=0
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\AverageInterestv1.2_Request\\Request_ARRCE2EINTCA_022.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\API_ARRCE2EINTCA_022.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\Response_ARRCE2EINTCA_022.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\API_ARRCE2EINTCA_022.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

TC023_POST_VALIDATE AVERAGE INTEREST_FOR_ARRCE2EINTCA_023 WITH LOCKOUT APPLIED
    [Documentation]    This testcase covers scenario where startDate=2020-02-29 endDate=2020-05-24 with lockout > lookback=0
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\AverageInterestv1.2_Request\\Request_ARRCE2EINTCA_023.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\API_ARRCE2EINTCA_023.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\Response_ARRCE2EINTCA_023.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\API_ARRCE2EINTCA_023.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

TC024_POST_VALIDATE AVERAGE INTEREST_FOR_ARRCE2EINTCA_024 WITH LOCKOUT AND LOOKBACK APPLIED
    [Documentation]    This testcase covers scenario where startDate=2020-05-08 endDate=2020-06-06 with lookback = lockout
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\AverageInterestv1.2_Request\\Request_ARRCE2EINTCA_024.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\API_ARRCE2EINTCA_024.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\Response_ARRCE2EINTCA_024.json    encoding=cp1252

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\API_ARRCE2EINTCA_024.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

TC025_POST_VALIDATE AVERAGE INTEREST_FOR_ARRCE2EINTCA_025 WITH LOOKBACK APPLIED
    [Documentation]    This testcase covers scenario where startDate=2020-04-30 endDate=2020-05-31 with lookback > lockout=0
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\AverageInterestv1.2_Request\\Request_ARRCE2EINTCA_025.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\API_ARRCE2EINTCA_025.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\Response_ARRCE2EINTCA_025.json    encoding=cp1252

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\API_ARRCE2EINTCA_025.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

TC026_POST_VALIDATE AVERAGE INTEREST_FOR_ARRCE2EINTCA_026 WITH LOCKOUT AND LOOKBACK APPLIED
    [Documentation]    This testcase covers scenario where startDate=2020-01-01 endDate=2020-05-29 with lookback > lockout
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\AverageInterestv1.2_Request\\Request_ARRCE2EINTCA_026.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\API_ARRCE2EINTCA_026.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\Response_ARRCE2EINTCA_026.json    encoding=cp1252

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\API_ARRCE2EINTCA_026.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

TC027_POST_VALIDATE AVERAGE INTEREST_FOR_ARRCE2EINTCA_027 WITH LOCKOUT AND LOOKBACK APPLIED
    [Documentation]    This testcase covers scenario where startDate=2020-05-01 endDate=2020-06-30 with lookback < lockout
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\AverageInterestv1.2_Request\\Request_ARRCE2EINTCA_027.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\API_ARRCE2EINTCA_027.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\Response_ARRCE2EINTCA_027.json    encoding=cp1252

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\API_ARRCE2EINTCA_027.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

TC028_POST_VALIDATE AVERAGE INTEREST_FOR_ARRCE2EINTCA_028 WITHOUT LOCKOUT AND LOOKBACK
    [Documentation]    This testcase covers scenario where startDate=2020-04-30 endDate=2020-05-29 with lookback=lockout=0
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\AverageInterestv1.2_Request\\Request_ARRCE2EINTCA_028.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\API_ARRCE2EINTCA_028.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\Response_ARRCE2EINTCA_028.json    encoding=cp1252

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\API_ARRCE2EINTCA_028.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

TC029_POST_VALIDATE AVERAGE INTEREST_FOR_ARRCE2EINTCA_029 WITH LOCKOUT AND LOOKBACK APPLIED
    [Documentation]    This testcase covers scenario where startDate=2020-02-03 endDate=2020-02-29 with lookback < lockout
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\AverageInterestv1.2_Request\\Request_ARRCE2EINTCA_029.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\API_ARRCE2EINTCA_029.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\Response_ARRCE2EINTCA_029.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\API_ARRCE2EINTCA_029.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

TC030_POST_VALIDATE AVERAGE INTEREST_FOR_ARRCE2EINTCA_030 WITH LOOKBACK APPLIED
    [Documentation]    This testcase covers scenario where startDate=2020-04-28 endDate=2020-05-07 with lookback > lockout=0
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\AverageInterestv1.2_Request\\Request_ARRCE2EINTCA_030.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\API_ARRCE2EINTCA_030.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\Response_ARRCE2EINTCA_030.json    encoding=cp1252

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\API_ARRCE2EINTCA_030.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

TC031_POST_VALIDATE AVERAGE INTEREST_FOR_ARRCE2EINTCA_031 WITH LOCKOUT AND LOOKBACK APPLIED
    [Documentation]    This testcase covers scenario where startDate=2020-01-01 endDate=2020-05-30 with lookback > lockout
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\AverageInterestv1.2_Request\\Request_ARRCE2EINTCA_031.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\API_ARRCE2EINTCA_031.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\Response_ARRCE2EINTCA_031.json    encoding=cp1252

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\API_ARRCE2EINTCA_031.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

TC032_POST_VALIDATE AVERAGE INTEREST_FOR_ARRCE2EINTCA_032 WITH LOCKOUT AND LOOKBACK APPLIED
    [Documentation]    This testcase covers scenario where startDate=2020-05-01 endDate=2020-06-01 with lookback > lockout=0
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.2\\AverageInterestv1.2_Request\\Request_ARRCE2EINTCA_032.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\API_ARRCE2EINTCA_032.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\Response_ARRCE2EINTCA_032.json    encoding=cp1252

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\AverageInterestv1.2_Response\\API_ARRCE2EINTCA_032.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

