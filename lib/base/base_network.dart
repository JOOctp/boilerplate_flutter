import 'package:flutter/foundation.dart';
import 'package:flutter_first_project/value/constant_api.dart';
import 'package:get/get.dart';

class BaseNetwork extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = ConstantAPI.BASE_URL;
    httpClient.timeout = ConstantAPI.DURATION_TIME_OUT;

    if(kDebugMode){
      httpClient.addRequestModifier<dynamic>((request) {
        printInfo(info: "Http Request     : ${request.url}");
        printInfo(info: "Http Header      : ${request.headers}");
        return request;
      });

      httpClient.addResponseModifier((request, response) {
        printInfo(info: "Http Response    : ${response.bodyString?.toString() ?? "Data Null"}");
        return response;
      });
    }
  }
}