// lib/pages/post_page.dart

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxblog/controllers/category_controller.dart';
import 'package:getxblog/models/post.dart';

class PostPage extends StatelessWidget {
  final String category;
  final CategoryController categoryController = Get.find<CategoryController>();
  final TextEditingController titleController = TextEditingController();
  final TextEditingController contentController = TextEditingController();

  PostPage({required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(category)),
      body: Column(
        children: [
          Expanded(
            child: Obx(() {
              List<Post> posts = categoryController.getPostsByCategory(category);
              return ListView.builder(
                itemCount: posts.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(posts[index].title),
                    subtitle: Text(posts[index].content),
                  );
                },
              );
            }),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextField(
                  controller: titleController,
                  decoration: InputDecoration(labelText: 'Title'),
                ),
                TextField(
                  controller: contentController,
                  decoration: InputDecoration(labelText: 'Content'),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    categoryController.addPost(
                      category,
                      titleController.text,
                      contentController.text,
                    );
                    titleController.clear();
                    contentController.clear();
                  },
                  child: Text('Add Post'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
