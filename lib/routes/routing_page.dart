import 'package:flutter_first_project/binding/view_list_category_binding.dart';
import 'package:flutter_first_project/routes/routing_name.dart';
import 'package:flutter_first_project/view/splash_screen.dart';
import 'package:flutter_first_project/view/view_list_category.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class RoutingPage {
  static final pages = [
    GetPage(
      name: RoutingName.splash,
      page: () => SplashScreen()
    ),
    GetPage(
      name: RoutingName.home,
      page: () => ViewListCategory(),
      binding: ViewListCategoryBinding(),
    )
  ];
}