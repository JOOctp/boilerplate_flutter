import 'dart:async';
import 'dart:convert';

import 'package:get/get.dart';
import 'package:get/get_connect/http/src/status/http_status.dart';

abstract class ApiResponse {
  static Response<T> getResponse<T>(Response<T> response) {
    final status = response.status;

    if (status.connectionError) {
      throw "Tidak ada koneksi internet";
    }

    try {
      String result = response.bodyString!;
      final res = jsonDecode(result);

      if (response.isOk) {
        return response;
      } else if (status.code == HttpStatus.requestTimeout) {
        throw "Oops, Koneksi terputus";
      } else {
        throw res['message']?.toString() ?? "Unknow error! Please try again after some time.";
      }
    } on FormatException {
      throw "Unknow error! Please try again after some time.";
    } on TimeoutException catch (e) {
      throw e.message?.toString() ?? "Oops, Koneksi terputus";
    }
  }
}