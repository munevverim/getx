import 'package:get/get.dart';

class AuthController extends GetxController{
  var isLoggedIn=false.obs;

  void login(String username,String password){
    if(username=='user' && password=='password'){
      isLoggedIn.value=true;
    }
  }
  void logout(){
    isLoggedIn.value=false;
  }
}