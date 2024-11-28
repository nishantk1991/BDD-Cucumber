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

TC001_POST_VALIDATE AVERAGE INTEREST_FOR_ARRCRTESKWNCA_001 WHEN START DATE IS HOLIDAY_LONG WEEKEND WITH LOOKBACK APPLIED
    [Documentation]    This testcase covers scenario where startDate=2020-04-10 endDate=2020-05-29 with lookback > lockout=0
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\AverageInterestv1.3_Requests\\ARRCRTESKWNCA_001.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\API_ARRCRTESKWNCA_001.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\ARRCRTESKWNCA_001.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\API_ARRCRTESKWNCA_001.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


TC002_POST_VALIDATE AVERAGE INTEREST_FOR_ARRCRTESKWNCA_001.1 WHEN START DATE IS HOLIDAY_LONG WEEKEND WITH LOOKBACK APPLIED
    [Documentation]    This testcase covers scenario where startDate=2020-04-10 endDate=2020-05-29 with lookback > lockout=0
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\AverageInterestv1.3_Requests\\ARRCRTESKWNCA_001.1.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\API_ARRCRTESKWNCA_001.1.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\ARRCRTESKWNCA_001.1.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\API_ARRCRTESKWNCA_001.1.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

TC003_POST_VALIDATE AVERAGE INTEREST_FOR_ARRCRTESKWNCA_002 WHEN START DATE IS WEEKEND AND END DATE IS MONTH START WITH LOCKOUT APPLIED
    [Documentation]    This testcase covers scenario where startDate=2020-05-02 endDate=2020-06-01 with lockout > lookback=0
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\AverageInterestv1.3_Requests\\ARRCRTESKWNCA_002.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\API_ARRCRTESKWNCA_002.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\ARRCRTESKWNCA_002.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\API_ARRCRTESKWNCA_002.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


TC004_POST_VALIDATE AVERAGE INTEREST_FOR_ARRCRTESKWNCA_002.1 WHEN START DATE IS WEEKEND AND END DATE IS MONTH START WITH LOCKOUT APPLIED
    [Documentation]    This testcase covers scenario where startDate=2020-05-02 endDate=2020-06-01 with lockout > lookback=0
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\AverageInterestv1.3_Requests\\ARRCRTESKWNCA_002.1.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\API_ARRCRTESKWNCA_002.1.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\ARRCRTESKWNCA_002.1.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\API_ARRCRTESKWNCA_002.1.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

TC005_POST_VALIDATE AVERAGE INTEREST_FOR_ARRCRTESKWNCA_003 WHEN START DATE AND END DATE IS BUSINESS DAY WITH LOOKBACK APPLIED
    [Documentation]    This testcase covers scenario where startDate=2020-03-02 endDate=2020-05-29 with lookback > lockout=0
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\AverageInterestv1.3_Requests\\ARRCRTESKWNCA_003.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\API_ARRCRTESKWNCA_003.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\ARRCRTESKWNCA_003.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\API_ARRCRTESKWNCA_003.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

TC006_POST_VALIDATE AVERAGE INTEREST_FOR_ARRCRTESKWNCA_003.1 WHEN START DATE AND END DATE IS BUSINESS DAY WITH LOOKBACK APPLIED
    [Documentation]    This testcase covers scenario where startDate=2020-03-02 endDate=2020-05-29 with lookback > lockout=0
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\AverageInterestv1.3_Requests\\ARRCRTESKWNCA_003.1.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\API_ARRCRTESKWNCA_003.1.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\ARRCRTESKWNCA_003.1.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\API_ARRCRTESKWNCA_003.1.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

TC007_POST_VALIDATE AVERAGE INTEREST_FOR_ARRCRTESKWNCA_004 WHEN START DATE IS WEEKSTART AND END DATE IS MONTHEND WEEKEND WITH LOOKBACK AND LOCKOUT APPLIED
    [Documentation]    This testcase covers scenario where startDate=2020-04-27 endDate=2020-05-30 with lookback < lockout
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\AverageInterestv1.3_Requests\\ARRCRTESKWNCA_004.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\API_ARRCRTESKWNCA_004.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\ARRCRTESKWNCA_004.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\API_ARRCRTESKWNCA_004.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

TC008_POST_VALIDATE AVERAGE INTEREST_FOR_ARRCRTESKWNCA_004.1 WHEN START DATE IS WEEKSTART AND END DATE IS MONTHEND WEEKEND WITH LOOKBACK AND LOCKOUT APPLIED
    [Documentation]    This testcase covers scenario where startDate=2020-04-27 endDate=2020-05-30 with lookback = lockout
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\AverageInterestv1.3_Requests\\ARRCRTESKWNCA_004.1.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\API_ARRCRTESKWNCA_004.1.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\ARRCRTESKWNCA_004.1.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\API_ARRCRTESKWNCA_004.1.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

TC009_POST_VALIDATE AVERAGE INTEREST_FOR_ARRCRTESKWNCA_004.2 WHEN START DATE IS WEEKSTART AND END DATE IS MONTHEND WEEKEND WITH LOOKBACK AND LOCKOUT APPLIED
    [Documentation]    This testcase covers scenario where startDate=2020-04-27 endDate=2020-05-30 with lookback < lockout
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\AverageInterestv1.3_Requests\\ARRCRTESKWNCA_004.2.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\API_ARRCRTESKWNCA_004.2.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\ARRCRTESKWNCA_004.2.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\API_ARRCRTESKWNCA_004.2.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

TC010_POST_VALIDATE AVERAGE INTEREST_FOR_ARRCRTESKWNCA_004.3 WHEN START DATE IS WEEKSTART AND END DATE IS MONTHEND WEEKEND WITH LOOKBACK AND LOCKOUT APPLIED
    [Documentation]    This testcase covers scenario where startDate=2020-04-27 endDate=2020-05-30 with lookback > lockout
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\AverageInterestv1.3_Requests\\ARRCRTESKWNCA_004.3.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\API_ARRCRTESKWNCA_004.3.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\ARRCRTESKWNCA_004.3.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\API_ARRCRTESKWNCA_004.3.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

TC011_POST_VALIDATE AVERAGE INTEREST_FOR_ARRCRTESKWNCA_004.4 WHEN START DATE IS WEEKSTART AND END DATE IS MONTHEND WEEKEND WITH LOOKBACK AND LOCKOUT APPLIED
    [Documentation]    This testcase covers scenario where startDate=2020-04-27 endDate=2020-05-30 with lookback < lockout
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\AverageInterestv1.3_Requests\\ARRCRTESKWNCA_004.4.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\API_ARRCRTESKWNCA_004.4.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\ARRCRTESKWNCA_004.4.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\API_ARRCRTESKWNCA_004.4.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

TC012_POST_VALIDATE AVERAGE INTEREST_FOR_ARRCRTESKWNCA_005 WHEN START DATE IS HOLIDAY AND END DATE IS BUSINESS DAY WITH LOCKOUT APPLIED
    [Documentation]    This testcase covers scenario where startDate=2020-01-01 endDate=2020-05-25 with lockout > lookback=0
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\AverageInterestv1.3_Requests\\ARRCRTESKWNCA_005.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\API_ARRCRTESKWNCA_005.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\ARRCRTESKWNCA_005.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\API_ARRCRTESKWNCA_005.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

TC013_POST_VALIDATE AVERAGE INTEREST_FOR_ARRCRTESKWNCA_005.1 WHEN START DATE IS HOLIDAY AND END DATE IS BUSINESS DAY WITH LOCKOUT APPLIED
    [Documentation]    This testcase covers scenario where startDate=2020-01-01 endDate=2020-05-25 with lockout > lookback=0
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\AverageInterestv1.3_Requests\\ARRCRTESKWNCA_005.1.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\API_ARRCRTESKWNCA_005.1.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\ARRCRTESKWNCA_005.1.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\API_ARRCRTESKWNCA_005.1.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


TC014_POST_VALIDATE AVERAGE INTEREST_FOR_ARRCRTESKWNCA_005.2 WHEN START DATE IS HOLIDAY AND END DATE IS BUSINESS DAY WITH LOCKOUT APPLIED
    [Documentation]    This testcase covers scenario where startDate=2020-01-01 endDate=2020-05-26 with lockout > lookback=0
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\AverageInterestv1.3_Requests\\ARRCRTESKWNCA_005.2.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\API_ARRCRTESKWNCA_005.2.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\ARRCRTESKWNCA_005.2.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\API_ARRCRTESKWNCA_005.2.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

TC015_POST_VALIDATE AVERAGE INTEREST_FOR_ARRCRTESKWNCA_006 WHEN START DATE IS MONTH START AND END DATE IS MONTH END WITH LOOKBACK AND LOCKOUT APPLIED
    [Documentation]    This testcase covers scenario where startDate=2020-02-01 endDate=2020-05-31 with lookback > lockout
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\AverageInterestv1.3_Requests\\ARRCRTESKWNCA_006.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\API_ARRCRTESKWNCA_006.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\ARRCRTESKWNCA_006.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\API_ARRCRTESKWNCA_006.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

TC016_POST_VALIDATE AVERAGE INTEREST_FOR_ARRCRTESKWNCA_006.1 WHEN START DATE IS MONTH START AND END DATE IS MONTH END WITH LOOKBACK AND LOCKOUT APPLIED
    [Documentation]    This testcase covers scenario where startDate=2020-02-01 endDate=2020-05-31 with lookback > lockout
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\AverageInterestv1.3_Requests\\ARRCRTESKWNCA_006.1.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\API_ARRCRTESKWNCA_006.1.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\ARRCRTESKWNCA_006.1.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\API_ARRCRTESKWNCA_006.1.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

TC017_POST_VALIDATE AVERAGE INTEREST_FOR_ARRCRTESKWNCA_006.2 WHEN START DATE IS MONTH START AND END DATE IS MONTH END WITH LOOKBACK AND LOCKOUT APPLIED
    [Documentation]    This testcase covers scenario where startDate=2020-02-01 endDate=2020-05-31 with lookback > lockout
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\AverageInterestv1.3_Requests\\ARRCRTESKWNCA_006.2.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\API_ARRCRTESKWNCA_006.2.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\ARRCRTESKWNCA_006.2.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\API_ARRCRTESKWNCA_006.2.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

TC018_POST_VALIDATE AVERAGE INTEREST_FOR_ARRCRTESKWNCA_007 WHEN START DATE IS MONTH START DATE IS WEEKSTART AND END DATE IS MONTHSTART WITH LOOKBACK APPLIED
    [Documentation]    This testcase covers scenario where startDate=2020-05-01 endDate=2020-06-01 with lookback > lockout=0
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\AverageInterestv1.3_Requests\\ARRCRTESKWNCA_007.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\API_ARRCRTESKWNCA_007.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\ARRCRTESKWNCA_007.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\API_ARRCRTESKWNCA_007.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

TC019_POST_VALIDATE AVERAGE INTEREST_FOR_ARRCRTESKWNCA_007.1 WHEN START DATE IS MONTH START DATE IS WEEKSTART AND END DATE IS MONTHSTART WITH LOOKBACK APPLIED
    [Documentation]    This testcase covers scenario where startDate=2020-05-01 endDate=2020-06-01 with lookback > lockout=0
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\AverageInterestv1.3_Requests\\ARRCRTESKWNCA_007.1.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\API_ARRCRTESKWNCA_007.1.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\ARRCRTESKWNCA_007.1.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\API_ARRCRTESKWNCA_007.1.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


TC020_POST_VALIDATE AVERAGE INTEREST_FOR_ARRCRTESKWNCA_008 WHEN START DATE IS MONTH START AND END DATE IS WEEKEND WITH LOOKBACK AND LOCKOUT APPLIED
    [Documentation]    This testcase covers scenario where startDate=2020-03-01 endDate=2020-05-30 with lookback < lockout
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\AverageInterestv1.3_Requests\\ARRCRTESKWNCA_008.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\API_ARRCRTESKWNCA_008.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\ARRCRTESKWNCA_008.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\API_ARRCRTESKWNCA_008.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


TC021_POST_VALIDATE AVERAGE INTEREST_FOR_ARRCRTESKWNCA_008.1 WHEN START DATE IS MONTH START AND END DATE IS WEEKEND WITH LOOKBACK AND LOCKOUT APPLIED
    [Documentation]    This testcase covers scenario where startDate=2020-03-01 endDate=2020-05-30 with lookback > lockout
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\AverageInterestv1.3_Requests\\ARRCRTESKWNCA_008.1.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\API_ARRCRTESKWNCA_008.1.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\ARRCRTESKWNCA_008.1.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\API_ARRCRTESKWNCA_008.1.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


TC022_POST_VALIDATE AVERAGE INTEREST_FOR_ARRCRTESKWNCA_009 WHEN START DATE IS MONTHEND WEEKEND AND END DATE IS WEEKEND WITH LOCKOUT APPLIED
    [Documentation]    This testcase covers scenario where startDate=2020-02-29 endDate=2020-05-24 with lockout > lookback =0
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\AverageInterestv1.3_Requests\\ARRCRTESKWNCA_009.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\API_ARRCRTESKWNCA_009.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\ARRCRTESKWNCA_009.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\API_ARRCRTESKWNCA_009.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


TC023_POST_VALIDATE AVERAGE INTEREST_FOR_ARRCRTESKWNCA_009.1 WHEN START DATE IS MONTHEND WEEKEND AND END DATE IS WEEKEND WITH LOCKOUT APPLIED
    [Documentation]    This testcase covers scenario where startDate=2020-02-29 endDate=2020-05-24 with lockout > lookback =0
 
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\AverageInterestv1.3_Requests\\ARRCRTESKWNCA_009.1.txt
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\API_ARRCRTESKWNCA_009.1.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\ARRCRTESKWNCA_009.1.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\API_ARRCRTESKWNCA_009.1.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


TC024_POST_VALIDATE AVERAGE INTEREST_FOR_ARRCRTESKWNCA_010 WHEN START DATE IS HOLIDAY AND END DATE IS WEEKDAY WITH LOOKBACK AND LOCKOUT APPLIED
    [Documentation]    This testcase covers scenario where startDate=2020-05-08 endDate=2020-06-06 with lockout = lookback
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\AverageInterestv1.3_Requests\\ARRCRTESKWNCA_010.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\API_ARRCRTESKWNCA_010.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\ARRCRTESKWNCA_010.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\API_ARRCRTESKWNCA_010.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

TC025_POST_VALIDATE AVERAGE INTEREST_FOR_ARRCRTESKWNCA_011 WHEN START DATE IS MONTHEND AND END DATE IS MONTHEND WITH LOOKBACK APPLIED
    [Documentation]    This testcase covers scenario where startDate=2020-04-30 endDate=2020-05-31 with lookback > lockout=0
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\AverageInterestv1.3_Requests\\ARRCRTESKWNCA_011.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\API_ARRCRTESKWNCA_011.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\ARRCRTESKWNCA_011.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\API_ARRCRTESKWNCA_011.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

TC026_POST_VALIDATE AVERAGE INTEREST_FOR_ARRCRTESKWNCA_012 WHEN START DATE IS YEAR START AND END DATE IS BUSINESS DAY WITH LOOKBACK AND LOCKOUT APPLIED
    [Documentation]    This testcase covers scenario where startDate=2020-01-01 endDate=2020-05-29 with lookback > lockout
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\AverageInterestv1.3_Requests\\ARRCRTESKWNCA_012.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\API_ARRCRTESKWNCA_012.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\ARRCRTESKWNCA_012.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\API_ARRCRTESKWNCA_012.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

TC027_POST_VALIDATE AVERAGE INTEREST_FOR_ARRCRTESKWNCA_013 WHEN START DATE IS MONTH START AND END DATE IS MONTH END WITH LOOKBACK AND LOCKOUT APPLIED
    [Documentation]    This testcase covers scenario where startDate=2020-05-01 endDate=2020-06-30 with lookback < lockout
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\AverageInterestv1.3_Requests\\ARRCRTESKWNCA_013.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\API_ARRCRTESKWNCA_013.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\ARRCRTESKWNCA_013.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\API_ARRCRTESKWNCA_013.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

TC028_POST_VALIDATE AVERAGE INTEREST_FOR_ARRCRTESKWNCA_014 WHEN START DATE IS MONTHEND WEEKDAY AND END DATE IS MONTH END
    [Documentation]    This testcase covers scenario where startDate=2020-04-30 endDate=2020-05-29 without lookback or lockout
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\AverageInterestv1.3_Requests\\ARRCRTESKWNCA_013.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\API_ARRCRTESKWNCA_013.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\ARRCRTESKWNCA_013.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\API_ARRCRTESKWNCA_013.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


TC029_POST_VALIDATE AVERAGE INTEREST_FOR_ARRCRTESKWNCA_015 WHEN START DATE IS BUSINESS DAY AND END DATE IS HOLIDAY WITH LOOKBACK AND LOCKOUT APPLIED
    [Documentation]    This testcase covers scenario where startDate=2020-05-01 endDate=2020-06-30 with lookback < lockout
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\AverageInterestv1.3_Requests\\ARRCRTESKWNCA_015.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\API_ARRCRTESKWNCA_015.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\ARRCRTESKWNCA_015.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\API_ARRCRTESKWNCA_015.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

TC030_POST_VALIDATE AVERAGE INTEREST_FOR_ARRCRTESKWNCA_016 WHEN START DATE IS BUSINESS DAY AND END DATE IS BUSINESS DAY WITH LOOKBACK APPLIED
    [Documentation]    This testcase covers scenario where startDate=2020-04-28 endDate=2020-05-07 with lookback > lockout=0
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\AverageInterestv1.3_Requests\\ARRCRTESKWNCA_016.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\API_ARRCRTESKWNCA_016.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\ARRCRTESKWNCA_016.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\API_ARRCRTESKWNCA_016.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

TC031_POST_VALIDATE AVERAGE INTEREST_FOR_ARRCRTESKWNCA_032 WHEN START DATE IS WEEKSTART AND END DATE IS MONTH START WITH LOOKBACK APPLIED
    [Documentation]    This testcase covers scenario where startDate=2020-04-28 endDate=2020-05-07 with lookback > lockout=0
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.3\\AverageInterestv1.3_Requests\\ARRCRTESKWNCA_032.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\API_ARRCRTESKWNCA_032.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\ARRCRTESKWNCA_032.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\AverageInterestv1.3_Response\\API_ARRCRTESKWNCA_032.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
