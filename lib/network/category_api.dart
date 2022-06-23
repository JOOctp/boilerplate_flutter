import 'package:get/get.dart';

import '../base/base_network.dart';
import 'api_response.dart';

class CategoryAPI extends BaseNetwork {

  Future<Response> getCategory() async {
    final response = await get("business-category?perPage=-1");
    return ApiResponse.getResponse(response);
  }
}