import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homework/exercise1.dart';
import 'package:homework/exercise2.dart';
import 'package:homework/routes/app_pages.dart';
import 'package:homework/theme/app_theme.dart';
import 'exercise3.dart';
import 'exercise4.dart';
import 'exercise5.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.light(),
      darkTheme: AppTheme.dark(),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercise'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
                onPressed: () {
                  Get.to(Exercise1());
                },
                child: Text('Exercise 1')),
            FlatButton(
                onPressed: () {
                  Get.to(Exercise2());
                },
                child: Text('Exercise 2')),
            FlatButton(
                onPressed: () {
                  Get.to(Exercise3());
                },
                child: Text('Exercise 3')),
            FlatButton(
                onPressed: () {
                  Get.to(Exercise4());
                },
                child: Text('Exercise 4')),
            FlatButton(
                onPressed: () {
                  Get.to(() => Exercise5());
                },
                child: Text('Exercise 5'))
          ],
        ),
      ),
    );
  }
}
