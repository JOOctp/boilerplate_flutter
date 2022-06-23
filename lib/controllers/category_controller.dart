import 'package:flutter_first_project/controllers/base_controller.dart';
import 'package:flutter_first_project/model/base_response.dart';
import 'package:get/get.dart';

import '../model/category.dart';
import '../network/category_api.dart';

class CategoryController extends BaseController {
  Rx<BaseResponse<List<Category>>> categoryResponse = BaseResponse<List<Category>>(status: false, isLoading: true, data: List.empty()).obs;

  void getCategory(){
    CategoryAPI().getCategory().then((value){
      categoryResponse.value = value;
      update();
    }).catchError((error){
      categoryResponse.value = BaseResponse<List<Category>>(status: false, isLoading: false, data: List.empty());
      showErrorToast(error.toString());
      update();
    });
  }
}