import 'package:get/get.dart';
import 'package:getxblog/models/post.dart';

class CategoryController extends GetxController{
  var posts=<Post>[].obs;

  void addPost(String category,String title,String content){
    posts.add(Post(category:category,title:title,content:content));

  }
  List<Post> getPostsByCategory(String category) {
    return posts.where((post) => post.category == category).toList();
  }
}