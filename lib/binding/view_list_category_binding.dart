import 'package:flutter_first_project/controllers/category_controller.dart';
import 'package:get/get.dart';

class ViewListCategoryBinding implements Bindings{
  @override
  void dependencies() {
    Get.put(CategoryController());
  }
}