import 'package:flutter/foundation.dart';

class ConstantAPI {
  static const BASE_URL = kDebugMode ? "https://blablabla/" : "https://blablabla/";
  static const HEADER_AUTH_TAG = "Authorization";
  static const HEADER_AUTH_KEY = "Bearer ";
  static const DURATION_TIME_OUT = Duration(seconds: 30);
}