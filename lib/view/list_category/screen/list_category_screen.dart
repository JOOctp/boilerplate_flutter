import 'package:flutter/material.dart';
import 'package:flutter_first_project/view/list_category/controller/list_category_controller.dart';
import 'package:flutter_first_project/value/colors_value.dart';
import 'package:get/get.dart';

import '../../../model/base_response.dart';
import '../../../model/category.dart';

class ListCategoryScreen extends StatelessWidget {
  final postC = Get.find<ListCategoryController>();

  @override
  Widget build(BuildContext context) {
    postC.getCategory();

    return Scaffold(
      appBar: AppBar(title: Text("Category Sewasam")),
      body: SafeArea(
        child: Obx((){
          if(postC.categoryResponse.value.isLoading){
            return Center(
                child: CircularProgressIndicator(
                    color: ColorsValue.greenSuccess
                )
            );
          } else if(postC.categoryResponse.value.data!.isEmpty){
            return Center(child: Text("Belum ada data"));
          } else {
            return ListView.builder(
              itemCount: postC.categoryResponse.value.data!.length,
              itemBuilder: (context, i) => ListTile(
                  title: Text("${postC.categoryResponse.value.data![i].name}")
              ),
            );
          }
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          postC.categoryResponse.value = BaseResponse<List<Category>>(status: false, isLoading: true, data: List.empty());
          postC.getCategory();
        },
        child: Icon(Icons.get_app_rounded),
      ),
    );
  }
}