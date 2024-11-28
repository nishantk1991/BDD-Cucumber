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

#Open API

#LIQ_API_URL="http://blrcswliqat0178:8073/loaniq123"
#User_ID="truser08"
#Password="pass"
#ConnectionSession="LIQAPISession"

############################################ ARRC

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
alias = "alias"
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

#Base_URI = "https://api.preprod.fusionfabric.cloud/login/v1/finastra-dev/.well-known/openid-configuration"
#CLIENT_ID = "b62b4383-4df8-49f9-aa87-1172fe34cb87"
#CLIENT_SECRET = "50b015e1-c044-4397-a5cb-008733f36400"

# Base_URI = "https://api.fusionfabric.cloud/login/v1/finastra-prod/.well-known/openid-configuration"
# CLIENT_ID = "eb7550e0-06e7-48b2-9532-ebf6a02a116d"
# CLIENT_SECRET = "6af2beda-fbfe-45a3-a42e-ca282fea8acc"

################################################ Kishore ARRC ####################################
###NOTE:- When running ARRC API from Python UTF framework, then need to provide below Base_URI from where framework will extract the actual token_endpoint
# Use this type of Base_URI = "https://api.fusionfabric.cloud/login/v1/finastra-dev/.well-known/openid-configuration"
# Instead of direct token_endpoint as Base_URI = "https://api.lobdev.fusionfabric.cloud/login/v1/finastra-dev/oidc/token"


# ARR_LobDev_env_token - Dev Adapter - working
# APIMUrl = "https://lobdev.liq.fusionfabric.io:8087"    # v1.4 Adapter URL
APIMUrl = "https://lobdev.liq.fusionfabric.io:8088"    # v1.5 Adapter URL


# ARR_LobDev2_env_token - Not working - Token issue
# APIMUrl = "https://api.lobdev.fusionfabric.cloud"
# Base_URI = "https://api.fusionfabric.cloud/login/v1/finastra-dev/.well-known/openid-configuration"
#### #Not-to-use  Base_URI = "https://api.lobdev.fusionfabric.cloud/login/v1/finastra-dev/oidc/token"
# CLIENT_ID = "d7bdda9b-e8d8-4d12-b5fe-d1e4b4da3395"
# CLIENT_SECRET = "dc8a5ce6-370d-4b21-a41e-f4d7b850960a"

# ARR_Pre-Prod_env_token - Not working - Token issue
# APIMUrl ="https://api.preprod.fusionfabric.cloud"
# Base_URI = "https://api.preprod.fusionfabric.cloud/login/v1/finastra-dev/oidc/token"
# CLIENT_ID = "b62b4383-4df8-49f9-aa87-1172fe34cb87"
# CLIENT_SECRET = "50b015e1-c044-4397-a5cb-008733f36400"

# ARR_UAT_env_token - working
# APIMUrl ="https://api.fusionfabric.cloud"
# Base_URI = "https://api.fusionfabric.cloud/login/v1/finastra-uat/.well-known/openid-configuration"
# ### #Not-to-use Base_URI = "https://api.fusionfabric.cloud/login/v1/finastra-uat/oidc/token"
# CLIENT_ID = "1b8a9a5b-651e-49f7-a073-56cc187260bc"
# CLIENT_SECRET = "d93f04d8-6cc0-43f7-b888-728d12fb61e1"

# ARR_Sandbox_env_token - Not working - ConnectionError: ('Connection aborted.', RemoteDisconnected('Remote end closed connection without response')) OR Token issue with other set
# APIMUrl ="https://api.fusionfabric.cloud"
# Base_URI = "https://lobdev.liq.fusionfabric.io:8086/login/v1/sandbox/.well-known/openid-configuration"
# ##Base_URI = "https://api.preprod.fusionfabric.cloud/login/v1/sandbox/oidc/token"
# CLIENT_ID = "f6253d55-5efe-4a09-8ad2-a5d4fc8adf61"
# CLIENT_SECRET = "c40cebbd-73e9-44c5-8414-4b5bdf8cdab5"
# CLIENT_ID = "b175bf6a-9be5-48a5-828d-112ac93304d0"
# CLIENT_SECRET = "0ffc0966-5080-4b08-918a-a48b34e7945d"


# ARR_PROD_env_token - working
# APIMUrl ="https://api.fusionfabric.cloud"
# Base_URI = "https://api.fusionfabric.cloud/login/v1/finastra-prod/.well-known/openid-configuration"
####Base_URI = "https://api.fusionfabric.cloud/login/v1/finastra-prod/oidc/token"
# CLIENT_ID = "eb7550e0-06e7-48b2-9532-ebf6a02a116d"
# CLIENT_SECRET = "6af2beda-fbfe-45a3-a42e-ca282fea8acc"



