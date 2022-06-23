import 'package:flutter_first_project/model/base_response.dart';
import 'package:flutter_first_project/model/category.dart';
import 'package:flutter_first_project/network/base_network.dart';
import 'package:flutter_first_project/util/data_util.dart';

class CategoryAPI extends BaseNetwork {

  Future<BaseResponse<List<Category>>> getCategory() async {
    final response = await getMethod("business-category?perPage=-1", false, null);
    dynamic body = response.body;

    if(response.statusCode == 200){
      List<dynamic> bodyData = body["data"];
      List<Category> listCategory = bodyData.map((e) => Category.fromJson(e)).toList();

      BaseResponse<List<Category>> baseResponse =  BaseResponse(
          status: body["status"],
          isLoading: false,
          message: body["message"],
          data: listCategory
      );
      return baseResponse;
    } else if(DataUtil().isNullEmptyOrFalse(body) || DataUtil().isNullEmptyOrFalse(body["message"])) {
      throw "Gagal Mengolah Data";
    } else {
      throw body["message"].toString();
    }
  }
}