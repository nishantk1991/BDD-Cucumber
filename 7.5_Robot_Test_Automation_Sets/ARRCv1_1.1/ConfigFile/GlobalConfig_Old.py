username = "srinivas"
password = "password"
app_path = "C:\\LoanIQ75\\Client75\\LoanIQJ.exe"
hostname = "blrcswliqat04"
port = "9005"
projectpath  = "C:\\7.5_Robot_Test_Automation_Sets\\ARRCv1_1.1"
verifyPerformanceLog = '1'  # This var is used to generate performance log, = '1' will activate the function, = '0' will skip 
listener  = "yes"
listener_folder_path   = "C:\\m"
skip_error = "Dictionary '${Alldata}' has no key"
show_dict_var = "No" 
run_name =''
storedatapath = projectpath + r'\ConfigFile\StoreData.ini'
ExceptionHandling = "no"
Locatorfile = projectpath +r'\ObjectMap\Locators.py'
data_path = projectpath +"\\TestData"
ExecuteForSpecificClient = ''
cur_dir = projectpath +r'\testData'
ActualDataPath = cur_dir + r'/excel/Actual/'
ExpectedDataPath = cur_dir + r'/excel/Expected/'
IgnoreAppColumnList="Benchmark Adjustment"

BatchTestingDataFilesDirectory = cur_dir +r'/BatchTesting'
BatchServerPath =  "\\\\blrcswliqat04\\Server75"

apiResponsePath = r'C:\API\\'


Customer_datafile= cur_dir +r'\Customer.csv'
Deal_datafile= cur_dir +r'\Deal.csv'
Facility_datafile= cur_dir +r'\Facility.csv'
Gtm_datafile= cur_dir +r'\Gtm.csv'


#Open API

#LIQ_API_URL="http://blrcswliqat0178:8073/loaniq123"
#User_ID="truser08"
#Password="pass"
#ConnectionSession="LIQAPISession"

#ARRC

#Base_URI = "https://api.lobdev.fusionfabric.cloud/login/v1/sandbox/.well-known/openid-configuration"
#Base_URI = "https://api.preprod.fusionfabric.cloud/login/v1/finastra-dev/oidc/token"
#APIMUrl = "https://arr-api.ffdcdev.fusionfabric.io"
#APIMUrl ="http://10.192.85.163:8087"
# APIMUrl ="https://lobdev.liq.fusionfabric.io:8086"
#APIMUrl ="https://api.fusionfabric.cloud"
# APIMUrl ="https://api.lobdev.fusionfabric.cloud"
#APIMUrl ="https://arr-api.ffdcdev.fusionfabric.io"
#APIMUrl  ="http://blrcswliqat0408:8087"
USERNAME ="ffdcuser1"
PASSWORD = "123456"
AUTHORIZATION_TYPE = "B2B"
ARR_Calc_Prefix  = "/corporate/lending/alternative-reference-rates/v1"
INPUT_REQUEST_PATH = projectpath + "\\TestData\\API_Requests"
API_EXPECTED_RESPONSE_PATH = projectpath + "\\TestData\\Expected"
API_ACTUAL_RESPONSE_PATH =  projectpath + "\\TestData\\Actual\\"
# Base_URI = "https://api.lobdev.fusionfabric.cloud/login/v1/finastra-dev/.well-known/openid-configuration"
# CLIENT_ID = "180aaab0-2c8f-430f-ab2d-0c166fb4069c"
# CLIENT_SECRET = "107f87b3-e7a2-4fc9-935a-7977a3442a38"
# Base_URI = "https://lobdev.liq.fusionfabric.io:8086/login/v1/sandbox/.well-known/openid-configuration"
# CLIENT_ID = "33e2080f-dcbc-455a-8475-5f17417d2539"
# CLIENT_SECRET = "d9a52657-934e-4aff-b655-102593e97f59"
#Base_URI = "https://api.fusionfabric.cloud/login/v1/finastra-uat/.well-known/openid-configuration"
#CLIENT_ID = "1b8a9a5b-651e-49f7-a073-56cc187260bc"
#CLIENT_SECRET = "d93f04d8-6cc0-43f7-b888-728d12fb61e1"
#Base_URI = "https://api.fusionfabric.cloud/login/v1/finastra-dev/.well-known/openid-configuration"
#CLIENT_ID = "d7bdda9b-e8d8-4d12-b5fe-d1e4b4da3395"
#CLIENT_SECRET = "dc8a5ce6-370d-4b21-a41e-f4d7b850960a"
# CLIENT_ID = "f6253d55-5efe-4a09-8ad2-a5d4fc8adf61"
# CLIENT_SECRET = "c40cebbd-73e9-44c5-8414-4b5bdf8cdab5"
# ARR_preprod_env_token
#Base_URI = "https://api.preprod.fusionfabric.cloud/login/v1/finastra-dev/.well-known/openid-configuration"
#CLIENT_ID = "b62b4383-4df8-49f9-aa87-1172fe34cb87"
#CLIENT_SECRET = "50b015e1-c044-4397-a5cb-008733f36400"

# ARR_PROD_env_token
Base_URI = "https://api.fusionfabric.cloud/login/v1/finastra-prod/.well-known/openid-configuration"
CLIENT_ID = "eb7550e0-06e7-48b2-9532-ebf6a02a116d"
CLIENT_SECRET = "6af2beda-fbfe-45a3-a42e-ca282fea8acc"

fac_Prefix=    "/facility/facilities"
NonLoan_Prefix=    "/nonloan/nonloans"
NonLoanDrawdown_Prefix=    "/nonloan/drawdown-transactions"
NonLoanIncreaseDecreaseTransactions_Prefix=    "/nonloan/increasedecrease-transactions"
FacilityPipelineTransactions_Prefix=  "facility/pipeline-transactions"
NonLoanPipelineTransactions_Prefix=  "nonloan/pipeline-transactions"
UserProfile_Prefix = "/user-profile/user-profiles"


#json file paths
jsonDataForActiveNonLoanUpdate_Term=  cur_dir +r'/OpenAPIData/JSonFiles/PUT_Update Active Non Loan By Alias_Term Facility.json'
jsonDataForPendingNonLoanUpdate_Term=  cur_dir +r'/OpenAPIData/JSonFiles/PUT_Update Pending Non Loan By Alias_Term Facility.json'
jsonDataForNonLoanUpdate_Revolver=  cur_dir +r'/OpenAPIData/JSonFiles/PUT_Uptate Non Loan By Alias_Revolver Facility.json'

jsonDataForCreateNonLoanDrawdown_Revolver=  cur_dir +r'/OpenAPIData/JSonFiles/POST_Create Non Loan Drawdown And GET_Details By ObjectID_Revolver Facility.json'
jsonDataForUpdateNonLoanDrawdown_Term=  cur_dir +r'/OpenAPIData/JSonFiles/PUT_Update An Existing Pending Non Loan Drawdown_Term Facility.json'
jsonDataForUpdateNonLoanDrawdown_Revolver=  cur_dir +r'/OpenAPIData/JSonFiles/PUT_Update A Pending Non Loan Drawdown_Revolver Facility.json'
jsonDataForCreateNonLoanDrawdown_Term=  cur_dir +r'/OpenAPIData/JSonFiles/POST_Create_Cancel Non Loan Drawdown_Non Primary Borrower_Term Facility.json'
jsonDataForCreateNonLoanDrawdown_Revolver_NonFacilityCurrency=  cur_dir +r'/OpenAPIData/JSonFiles/POST_Create_Approve_Release Non Loan Drawdown_Revolver Non Facility Currency.json'
jsonDataForCreateNonLoanDrawdown_TermFac=  cur_dir +r'/OpenAPIData/JSonFiles/POST_Create_Release Non Loan Drawdown_Term Facility.json'
jsonDataForCreateNonLoanDrawdownReleased_Revolver=  cur_dir +r'/OpenAPIData/JSonFiles/POST_Create Non Loan Drawdown Without StatusCode And GET_Details By ObjectID_Revolver Facility.json'

jsonDataForCreateNonLoanIncrease_Term=  cur_dir +r'/OpenAPIData/JSonFiles/POST_Create Non Loan Increase_Term Facility.json'
jsonDataForUpdateNonLoanIncrease_Term=  cur_dir +r'/OpenAPIData/JSonFiles/PUT_Update Non Loan Increase By ObjectId_Term Facility.json'


jsonDataForCreateNonLoanDecrease_Revolver=  cur_dir +r'/OpenAPIData/JSonFiles/POST_Create Non Loan Decrease_Revolver Facility.json'
jsonDataForUpdateNonLoanDecrease_Revolver=  cur_dir +r'/OpenAPIData/JSonFiles/PUT_Update Non Loan Decrease By ObjectId_Revolver Facility.json'
jsonDataForCreateNonLoanDecrease_Revolver1=  cur_dir +r'/OpenAPIData/JSonFiles/POST_Create Non Loan Decrease_Revolver Facility1.json'


jsonDataForCreatePipelineTransactions_Revolver=  cur_dir +r'/OpenAPIData/JSonFiles/POST_Create_GET Facility Pipeline Transaction_Non Primary Borrower_Non Facility Currency_Negative Amount_Revolver Facility.json'
jsonDataForCreatePipelineTransactions_Revolver1=  cur_dir +r'/OpenAPIData/JSonFiles/POST_Create Facility Pipeline Transaction_Primary Borrower_Revolver Facility.json'
jsonDataForCreatePipelineTransactions_Term=  cur_dir +r'/OpenAPIData/JSonFiles/POST_GET_Facility Pipeline Transaction By ObjectId Term Facility.json'
jsonDataForUpdatePipelineTransactions_Term=  cur_dir +r'/OpenAPIData/JSonFiles/PUT_Update An Existing Facility Pipeline Transaction By ObjectID_Term Facility.json'
jsonDataForCreatePipelineTransactions_Revolver2=  cur_dir +r'/OpenAPIData/JSonFiles/POST_GET_Facility Pipeline Transaction By ObjectId_Non Primary Borrower_Non Facility Currency_Revolver Facility.json'
jsonDataForUpdatePipelineTransactions_Revolver=  cur_dir +r'/OpenAPIData/JSonFiles/PUT_Update An Existing Facility Pipeline Transaction By ObjectID_Negative Amount_Non Primary Borrower_Change Facility Currency_Revolver Facility.json'



jsonDataForCreateNonLoanPipelineTransactions_Revolver=  cur_dir +r'/OpenAPIData/JSonFiles/POST_Create_GET Non Loan Pipeline Transaction_Negative Amount_Revolver Facility.json'
jsonDataForCreateNonLoanPipelineTransactions_Term=  cur_dir +r'/OpenAPIData/JSonFiles/POST_Create_GET Non Loan Pipeline Transaction_Term Facility.json'
jsonDataForCreateNonLoanPipelineTransactions_Revolver1=  cur_dir +r'/OpenAPIData/JSonFiles/POST_Create_GET Non Loan Pipeline Transaction_Revolver Facility.json'
jsonDataForUpdateNonLoanPipelineTransactions_Revolver1=  cur_dir +r'/OpenAPIData/JSonFiles/PUT_Update An Existing Non Loan Pipeline Transaction By ObjectID_Reovolver Facility.json'
jsonDataForUpdateNonLoanPipelineTransactions_Term=  cur_dir +r'/OpenAPIData/JSonFiles/PUT_Update An Existing Non Loan Pipeline Transaction By ObjectID_Term Facility.json'


jsonDataForUpdateSecondaryProcessingArea= cur_dir +r'/OpenAPIData/JSonFiles/PUT_Update 1 Secondary Processing Areas associated with a user profile with the User ID of the user.json'
jsonDataForUpdateSecondaryProcessingArea_multiple= cur_dir +r'/OpenAPIData/JSonFiles/PUT_Update 1 Secondary Processing Areas associated with a user profile with the User ID of the user.json'