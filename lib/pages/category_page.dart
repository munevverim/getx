// lib/pages/category_page.dart

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxblog/controllers/category_controller.dart';
import 'package:getxblog/pages/post_page.dart';

class CategoryPage extends StatelessWidget {
  final CategoryController categoryController = Get.put(CategoryController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Categories')),
      body: ListView(
        children: [
          ListTile(
            title: Text('Spor'),
            onTap: () => Get.to(() => PostPage(category: 'Spor')),
          ),
          ListTile(
            title: Text('Müzik'),
            onTap: () => Get.to(() => PostPage(category: 'Müzik')),
          ),
          ListTile(
            title: Text('Hayat'),
            onTap: () => Get.to(() => PostPage(category: 'Hayat')),
          ),
          ListTile(
            title: Text('Bilim'),
            onTap: () => Get.to(() => PostPage(category: 'Bilim')),
          ),
        ],
      ),
    );
  }
}
