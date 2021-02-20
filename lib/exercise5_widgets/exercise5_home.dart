import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homework/routes/app_routes.dart';

class Exercise5Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text('Home'),
          OutlineButton(
              child: Text('Go to Detail'),
              onPressed: () {
                Get.toNamed(Routes.EXERCISE5DETAIL, id: 1);
              })
        ],
      ),
    );
  }
}
