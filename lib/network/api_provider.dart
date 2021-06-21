import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:connectivity/connectivity.dart';
import 'package:demo/util/app_string.dart';
import 'package:demo/util/custom_exception.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class ApiProvider {
  final header1 = {HttpHeaders.contentTypeHeader: 'application/x-www-form-urlencoded'};
  final header2 = {HttpHeaders.contentTypeHeader: 'application/json'};
  final encoding = Encoding.getByName("utf-8");


  static Future<bool> isConncetivityOn() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile) {
      return true;
    } else if (connectivityResult == ConnectivityResult.wifi) {
      return true;
    }
    return false;
  }



  Future<dynamic> get(String url) async {
    print("--url-->" + url);
    var responseJson;
    try {
      final response = await http.get(Uri.parse(url)).timeout(Duration(seconds: AppString.NETWORK_TIMEOUT_DURATION));
      responseJson = _returnResponse(response);
    }
    on SocketException {
      throw FetchDataException('No Internet connection ');
    }
    on TimeoutException {
      throw FetchDataException("Connection Time Out");
    }
   return responseJson;
  }

  Future<dynamic> get1(String url,Map<String,String> hedr) async {
    print("--url-->" + url);
    var responseJson;
    try {
      final response = await http.post( Uri.parse(url),headers: hedr);
      responseJson = _returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  Future<dynamic> post(String url, Map<String,dynamic> jsonData) async {
    print("--url-->" + url);
    String param  = jsonEncode(jsonData);
    log("--body-->" + param);
    Response response;
    try {
      var http;
      response = await http.post(Uri.parse(url), headers: header2, body: param, encoding: encoding);
    } on SocketException {
      throw ('No Internet connection');
    }
    return _returnResponse(response);
  }

  Future<String> downloadFile(String url, String fileName, String dir) async {
    HttpClient httpClient = new HttpClient();
    File file;
    String filePath = '';
    String myUrl = '';

    try {
      myUrl = url+'/'+fileName;
      var request = await httpClient.getUrl(Uri.parse(myUrl));
      var response = await request.close();
      if(response.statusCode == 200) {
        var bytes = await consolidateHttpClientResponseBytes(response);
        filePath = '$dir/$fileName';
        file = File(filePath);
        await file.writeAsBytes(bytes);
      }
      else
        filePath = 'Error code: '+response.statusCode.toString();
    } catch(ex){
      filePath = 'Can not fetch url';
    }
    return filePath;

  }

  static var httpClient = new HttpClient();

/*  Future<File> downloadFiles(String url, String filename) async {
    var request = await httpClient.getUrl(Uri.parse(url));
    var response = await request.close();
    var bytes = await consolidateHttpClientResponseBytes(response);
    String dir = (await getApplicationDocumentsDirectory()).path;
    File file = new File('$dir/$filename');
    await file.writeAsBytes(bytes);
    return file;
  }*/

  dynamic _returnResponse(http.Response response) {
    print(response.statusCode);

    switch (response.statusCode) {
      case 200:
        return response;
      case 400:
        print('Bad Request Exception');
        throw BadRequestException(response.body.toString());
      case 401:
        return print('Error occured while Communication with Server with StatusCode : ${response.statusCode}'+' '+response.body);
      case 403:
        throw UnauthorisedException(response.body.toString());
      case 500:
        print('Error occured while Communication with Server with StatusCode : ${response.statusCode}'+' '+response.body);
        return response;
      default:
        print('Error occured while Communication with Server');
        throw FetchDataException('Error occured while Communication with Server with StatusCode : ${response.statusCode}'+' '+response.body);
    }
  }

  Future<bool> checkInternetConnection(String value) async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty)
        {}
      } catch (e) {}
  }
}
