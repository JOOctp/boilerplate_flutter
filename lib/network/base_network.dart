import 'package:flutter_first_project/value/constant_api.dart';
import 'package:get/get.dart';

class BaseNetwork extends GetConnect {
  Map<String, String> headersDefault = {"Content-Type" : "application/json"};

  @override
  void onInit() {
    httpClient.baseUrl = ConstantAPI.BASE_URL;
    httpClient.timeout = ConstantAPI.DURATION_TIME_OUT;

    print("JALAN");
  }

  Future<Response> getMethod(String url, bool usingToken, Map<String, dynamic>? query){
    if(usingToken) headersDefault.addEntries([MapEntry(ConstantAPI.HEADER_AUTH_KEY, ConstantAPI.HEADER_AUTH_TAG)]);

    return get(url, headers: headersDefault, query: query);
  }

  Future<Response> postMethod(String url, dynamic body, Map<String, dynamic>? query){
    headersDefault.addEntries([MapEntry(ConstantAPI.HEADER_AUTH_KEY, ConstantAPI.HEADER_AUTH_TAG)]);

    return post(url, body, headers: headersDefault, query: query);
  }

  Future<Response> putMethod(String url, dynamic body, Map<String, dynamic>? query){
    headersDefault.addEntries([MapEntry(ConstantAPI.HEADER_AUTH_KEY, ConstantAPI.HEADER_AUTH_TAG)]);

    return put(url, body, headers: headersDefault, query: query);
  }

  Future<Response> deleteMethod(String url, Map<String, dynamic>? query){
    headersDefault.addEntries([MapEntry(ConstantAPI.HEADER_AUTH_KEY, ConstantAPI.HEADER_AUTH_TAG)]);

    return delete(url, headers: headersDefault, query: query);
  }
}