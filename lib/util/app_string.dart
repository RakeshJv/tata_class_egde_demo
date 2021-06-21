import 'package:device_info/device_info.dart';

class AppString {

  static Map<String, dynamic> readAndroidBuildData(AndroidDeviceInfo build) {
    return <String, dynamic>{
      'version.securityPatch': build.version.securityPatch,
      'version.sdkInt': build.version.sdkInt,
      'version.release': build.version.release,
      'version.previewSdkInt': build.version.previewSdkInt,
      'version.incremental': build.version.incremental,
      'version.codename': build.version.codename,
      'version.baseOS': build.version.baseOS,
      'board': build.board,
      'bootloader': build.bootloader,
      'brand': build.brand,
      'device': build.device,
      'display': build.display,
      'fingerprint': build.fingerprint,
      'hardware': build.hardware,
      'host': build.host,
      'id': build.id,
      'manufacturer': build.manufacturer,
      'model': build.model,
      'product': build.product,
      'supported32BitAbis': build.supported32BitAbis,
      'supported64BitAbis': build.supported64BitAbis,
      'supportedAbis': build.supportedAbis,
      'tags': build.tags,
      'type': build.type,
      'isPhysicalDevice': build.isPhysicalDevice,
      'androidId': build.androidId,
    };
  }

  static Map<String, dynamic> readIosDeviceInfo(IosDeviceInfo data) {
    return <String, dynamic>{
      'name': data.name,
      'systemName': data.systemName,
      'systemVersion': data.systemVersion,
      'model': data.model,
      'localizedModel': data.localizedModel,
      'identifierForVendor': data.identifierForVendor,
      'isPhysicalDevice': data.isPhysicalDevice,
      'utsname.sysname:': data.utsname.sysname,
      'utsname.nodename:': data.utsname.nodename,
      'utsname.release:': data.utsname.release,
      'utsname.version:': data.utsname.version,
      'utsname.machine:': data.utsname.machine,
    };
  }

  static int NETWORK_TIMEOUT_DURATION = 90;
  static int DIALOG_TIMEOUT_DURATION = 30;

                                    /*Test*/
  //static String BASE_URL = "http://m.test.im3cloud.com/web/service/MobileServiceForWO.asmx/";
  //static String API_PATH = "/web/service/MobileServiceForWO.asmx/";

                                 /*Sandbox-Test*/
/*

  static String BASE_URL = "http://m.sandbox.im3cloud.com/web/service/MobileServiceForWO.asmx/";
  static String API_PATH = "/web/service/MobileServiceForWO.asmx/";
  static String SITE_URL = "http://sandbox.im3cloud.com";

*/

  /*Sandbox-beta okay*/
  static String BASE_URL = "https://sandboxokaymobile.im3cloud.com/web/service/MobileServiceForWO.asmx/";
  static String API_PATH = "/web/service/MobileServiceForWO.asmx/";
  static String SITE_URL = "http://sandboxokay.im3cloud.com";

  //m.betacrossponit.im3cloud.com  //
                                    /*Beta*/
  //static String BASE_URL = "http://beta.reefermobile.im3cloud.com/web/service/MobileServiceForWO.asmx/";
  //static String API_PATH = "/web/service/MobileServiceForWO.asmx/";

  static const String INTERNET_ERROR = "No Internet Connection";
  static const String INTERNET_ERROR_RETRY = "No Internet Connection.\nPlease Retry";
  static const String API_ERROR_500 = "Error while communication with web server";
  static const String LABEL_LOCATE_BRANCH = "Locate Branch";
  static const String LABEL_PROMOTION = "Promotion";
  static const String LABEL_CHAT_WITH_US = "Chat with us";
  static const String LABEL_SEND_MONEY = "Send Money";
  static const String LABEL_My_Favourites = "My Favourites";
  static const String LABEL_Beneficiary_List = "Beneficiary List";
  static const String LABEL_All_Beneficiary = "All Beneficiary";
  static String API_FLAG_EMOJI = "country-flag-emoji-json@1.0.2/json/flag-emojis.pretty.json";
  static String LABEL_E_QUOTE = "e-Quote";
  static String LABEL_MASTER = "Master";
  static String LABEL_QUOTE = "Quote";
  static String LABEL_ITEM = "Item";
  static String LABEL_REPORT = "Report";
  static String LABEL_HOME = "Home";
  static const String APP_FONT = "SegoeUI";
  static   double ExtraLargeFont = 20.0;
  static   double LargeFont = 16.0;
  static   double MediumFont = 12.0;
  static   double SmallFont = 10.0;
  static  String API_ERROR_NO_DATA_FOUND = "No Records Found";

  /*Api Name Strings*/

  //Repository

  static String GET_QUOTE_LIST_FOR_MOBILE = "GetQuoteListForQuoteApp?";
 /*static String GET_QUOTE_LIST_FOR_MOBILE2 = "getQuoteListForQuoteApp?";*/

  static String GET_PARTS = "GetPartsForQuote?";
  static String GET_PART_HELP = "GetPartHelp?";
  static String GET_INSTALLATION_PART_HELP = "GetInstallationPartHelp?";
  static String GET_CATAGORY = "GetCategories?";
  static String GET_CATEGORY_FOR_QUOTE = "GetCategoriesForQuote?";
  static String GET_SUPPLIMENTAL_PART = "GetSupplementalParts?";
  static String GET_PART_DETAIL_FOR_PART = "GetPartDetailForQuote?";
  static String GET_CUST_HELP = 'GetCustHelp?';
  static String ADD_EDIT_QUOTES = "AddEditQuote";
  static String GET_WO_DETAILS_FOR_QUOTE = "getWODetailsForQuote?";
  static String GET_CUSTOMER_DETAILS_FOR_QUOTE = "getCustomerDetailsForQuote?";
  static String GET_EQ_HELP = "GetEQHelp?";
  static String Add_Edit_Quote_Parts = "AddQuotePart";
  static String Add_Quote_For_Quote_App = "AddQuoteForQuoteApp";
  static String GET_STATUS_TASK_ACTION_FOR_MOB = "GetStatusTaskActionForMob?";
  static String GET_COMPANY_URL = "GetCompanyUrl?";
  static String ADD_DEVICE_DETAILS = "AddDeviceDetails?";
  static String DOWNLOAD_WORKORDER = "DownloadWorkOrder?";
  static String ADD_QUOTE_TASK = "AddQuoteT";
  static String GET_TASK_HELP = "GetTaskHelp?";
  static String DELETE_WO_TASK = "DeleteWoTask?";
  static String DELETE_QUOTE_PART = "DeleteQuotePart?";

  /* notes api*/
  static String GET_QUOTE_NOTES = "GetQuoteNotes?";

  static String ADD_UPDATE_QUOTE_NOTES = "AddUpdateWONotes";
  static String DELETE_QUOTE_NOTES = "DeleteWoNotes";
  static String API_DELETE_ATTACHMENT = "DeleteAttachment";
  static String API_DOWNLOAD_ATTACHMENT = "/attachment/";

/* Question and Answer */

  static String API_GET_QUESTION_PAPER_FOR_QUOTE = "getQuestionPaperForQuote?";
/* Sales Order  */

  static String API_GET_MY_ORDERS = "getMyOrders";

  static String API_CREATE_SO_AND_INVOICE= "CreateSOAndInvoice";

  static String EQUAL_SYMBOL = "=";
  static String AMPERSAND_SYMBOL = "&";

  //URL FOR CATEGORY IMAGES FROM WEB
  //static String GET_CATEGORY_IMAGE = "${sharedPrefs.siteUrl}/attachment/category/";
  //static String GET_CATALOG_IMAGE = "${sharedPrefs.siteUrl}/attachment/catalog/";
 // static String GET_CATEGORY_AND_CATALOG_IMAGE = "https://betacrosspoint.im3cloud.com";


  //Bool for handle Add/Edit functionality
  static bool IS_FROM_EDIT_OR_VIEW_QUOTE = false;
  //Bool for handle add product from cart to quote
  static bool IS_FROM_CART = false;
  //Bool for handle between create new quote or add in existing
  static bool IS_FROM_CART_ADD_TO_EXISTING_QUOTE = false;

  // Label qoute dashbOARD
  static String LABEL_OPEN = "OPEN";
  static String LABEL_CONVERTED_TO_WO = "CONVERTED TO WO";
  static String LABEL_REJECTED = "REJECTED";
  static String LABEL_CANCELLED = "CANCELLED";
  static String LABEL_READY_TO_REVIEW = "READY TO REVIEW";
  static String LABEL_REVIEWED = "REVIEWED";
  static String LABEL_SENT_TO_CUSTOMER = "SENT TO CUSTOMER";
  static String LABEL_APPROVED = "APPROVED";

  static String selectedIWONo = "";
  static String selectedQuoteDate = "";
  static String selectedQuoteCustomerIdName = "";

  static String ALERT_MSG_LOGOUT = "Do you want to logout from the app ?";
  static String LABEL_ALERT = "Alert";
  static String LABEL_YES = "Yes";
  static String LABEL_NO = "No";

//logo
  static const String IMAGE_IM3_LOGO = "images/im3_big.png";
  static const String SEGOEUI_FONT = "SegoeUI";
  static const String LABEL_VERIFICATION_CODE =
      "Enter mobile app verification code";
  static const String IMAGE_BARCODE = "images/barcode.png";
  static const String IMAGE_ROUND_INFO = "images/round_info.png";
  static const String LABEL_OK = "OK";
  static const String IM3_STATUS_MSG = "Powered By Peopleplus Software";
  static const String LABEL_ALERT_DIALOG =
      "You can get your verification code on the home screen of iM3 website";
  static const String LABEL_EXIT_DIALOG = "Do you really want to exit an app?";
  static const String VERIFICATION_CODE = "coldfrontbeta";

  static const String LOGIN_USER_EMAIL_ID = "User ID / Email";
  static const String LOGIN_FORGOT_PASSWORD = "Forgot Password ?";
  static const String LOGIN_USER_NAME_LABEL = "User Name";
  static const String LOGIN_USER_PASSWORD_LABEL = "Password";
  static const String ASTERIK_SYMBOL = "*";

  static const String LOGIN_USER_PASSWORD_ERROR_MSG =
      "Password must be at least 8 characters";
  static const String LOGIN_USER_NAME_HINT = "Enter user name";
  static const String LOGIN_USER_PASSWORD_HINT = "Enter password";
  static const String LOGIN_USER_NAME_ERROR_MSG =
      "User name must be at least 3 characters";
  static const String LOGIN_LOGIN_BUTTON_LABEL = "Login";
  static const String LABEL_DELETE_ATTACHMENT = "Do you  want to delete attachment ?";
  static const String LABEL_DOWNLOAD_ATTACHMENT = "Do you  want to download attachment ?";

/*  static const String DEVICE_ID ="abcd";*/
/*  static const String TOKEN ="abcd";*/

  static int companyCode = 0;

  static int  suggestionsListSize =15;

  static  String DATA_FETCH_LIMIT = "50";

 /* static  String SERVER_TYPE = "";*/

  static getSanboxUrl(){

     //BASE_URL = "http://m.sandbox.im3cloud.com/web/service/MobileServiceForWO.asmx/";
    // API_PATH = "/web/service/MobileServiceForWO.asmx/";
 //  St  SITE_URL = "http://sandbox.im3cloud.com";
  }

  static getBetaUrl(){


   //  BASE_URL = "http://beta.reefermobile.im3cloud.com/web/service/MobileServiceForWO.asmx/";
   //  API_PATH = "/web/service/MobileServiceForWO.asmx/";

  }

//  static  int I_CUSTOMER_ID = 0;

  static  int I_CUSTOMER_ID = 1713;

  static String ROUTE_DIRECT_HOME_SCREEN = "/home";
  static String ROUTE_DIRECT_VIDEO_PLAYER_SCREEN = "/videoPlayer";
  static String ROUTE_DIRECT_QUIZ_SCREEN = "/quiz";

}
