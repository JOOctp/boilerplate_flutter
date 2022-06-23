import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../value/colors_value.dart';
import '../controller/list_category_controller.dart';


class ListCategoryScreen extends StatelessWidget {
  final postC = Get.find<ListCategoryController>();

  @override
  Widget build(BuildContext context) {
    postC.getCategory();

    return Scaffold(
      appBar: AppBar(title: Text("Category Sewasam")),
      body: SafeArea(
        child: Obx((){
          if(postC.isLoading.value){
            return Center(
                child: CircularProgressIndicator(
                    color: ColorsValue.greenSuccess
                )
            );
          } else if(postC.listCategory.isEmpty){
            return Center(child: Text("Belum ada data"));
          } else {
            return ListView.builder(
              itemCount: postC.listCategory.length,
              itemBuilder: (context, i) => ListTile(
                  title: Text("${postC.listCategory[i].name}")
              ),
            );
          }
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          postC.getCategory();
        },
        child: Icon(Icons.get_app_rounded),
      ),
    );
  }
}