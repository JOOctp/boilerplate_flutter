import 'package:get/get.dart';

import '../../../network/category_api.dart';
import '../controller/list_category_controller.dart';

class ListCategoryBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => ListCategoryController());
    Get.lazyPut(() => CategoryAPI());
  }
}