import 'package:flutter/material.dart';
import 'package:flutter_first_project/controllers/category_controller.dart';
import 'package:flutter_first_project/routes/routing_page.dart';
import 'package:flutter_first_project/view/view_list_category.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final postC = Get.put(CategoryController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ViewListCategory(),
      getPages : RoutingPage.pages,
    );
  }
}
