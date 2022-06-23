import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../routes/routing_name.dart';

class SplashScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), (){
      Get.offNamed(RoutingName.home);
    });

    return Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: _imageView(150, 150)
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Text("Made With",
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.black,
                    fontSize: 14,
                  )
              ),
            )
          ],
        )
      ),
    );
  }

  Widget _imageView(double width, double height){
    return SizedBox(
        width: width.toDouble(),
        height: height.toDouble(),
        child: Card(color: Colors.red)
    );
  }
}