import 'package:flutter/material.dart';
import 'package:flutter_first_project/view/splash_screen.dart';
import 'package:get/get.dart';

import 'network/category_api.dart';
import 'routes/routing_page.dart';
import 'view/list_category/binding/view_list_category_binding.dart';
import 'view/list_category/controller/list_category_controller.dart';
import 'view/list_category/screen/list_category_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SplashScreen(),
      getPages : RoutingPage.pages,
    );
  }
}
