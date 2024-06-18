// lib/pages/login_page.dart

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxblog/controllers/auth_controller.dart';

class LoginPage extends StatelessWidget {
  final AuthController authController = Get.put(AuthController());
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: usernameController,
              decoration: InputDecoration(labelText: 'Username'),
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                authController.login(
                  usernameController.text,
                  passwordController.text,
                );
                if (authController.isLoggedIn.value) {
                  Get.toNamed('/categories');
                } else {
                  Get.snackbar('Error', 'Invalid username or password');
                }
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
