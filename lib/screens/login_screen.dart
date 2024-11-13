import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/auth_controller.dart';

class LoginScreen extends StatelessWidget {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final AuthController authController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(mainAxisAlignment:MainAxisAlignment.center,
            children: [
              TextField(controller: _emailController, decoration: InputDecoration(border:OutlineInputBorder(),hintText: 'Email')),
              SizedBox(height:20),
              TextField(controller: _passwordController, decoration: InputDecoration(border:OutlineInputBorder(),hintText: 'Password')),
              SizedBox(height:30),
              MaterialButton(
                onPressed: () => authController.login(_emailController.text, _passwordController.text),
                child: Text('Login',style:TextStyle(color:Colors.white,fontSize:15)),color:Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
