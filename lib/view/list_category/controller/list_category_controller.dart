import 'package:get/get.dart';

import '../../../base/base_controller.dart';
import '../../../model/category.dart';
import '../../../network/category_api.dart';

class ListCategoryController extends BaseController {
  final _categoryAPI = Get.find<CategoryAPI>();
  List<Category> listCategory = List.empty(growable: true);
  RxBool isLoading = false.obs;

  void getCategory(){
    isLoading.value = true;

    _categoryAPI.getCategory().then((value) async {
      isLoading.value = false;

      if(value.statusCode == 200){
        List<dynamic> bodyData = value.body["data"];
        listCategory.clear();

        for (var element in bodyData) {
          Category category = Category.fromJson(element);
          listCategory.add(category);
        }

        update();
      } else {
        showErrorToast(value.body["message"]);
        update();
      }
    }).catchError((error){
      isLoading.value = false;
      showErrorToast(error.toString());
      update();
    });
  }
}