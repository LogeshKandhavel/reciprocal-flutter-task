import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'login_screen.dart';
import 'signup_screen.dart';

class AuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () => Get.to(LoginScreen()),
              child: Text('Login',style:TextStyle(color:Colors.white,fontSize:15)),color:Colors.lightBlue,
            ),SizedBox(height:20),
            MaterialButton(
              onPressed: () => Get.to(SignupScreen()),
              child: Text('Sign Up',style:TextStyle(color:Colors.white,fontSize:15)),color:Colors.lightBlue,
            ),
          ],
        ),
      ),
    );
  }
}
