import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_blog/core/constants/app_pages.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Book Review Blog',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
    );

  }
}
