// lib/main.dart

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxblog/pages/login_page.dart';
import 'package:getxblog/pages/category_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => LoginPage()),
        GetPage(name: '/categories', page: () => CategoryPage()),
      ],
    );
  }
}
