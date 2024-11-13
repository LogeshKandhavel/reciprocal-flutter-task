import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../screens/auth_screen.dart';
import '../screens/product_list_screen.dart';

class AuthController extends GetxController {
  FirebaseAuth _auth = FirebaseAuth.instance;
  var isLoggedIn = false.obs;

  void login(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      isLoggedIn.value = true;
      Get.off(ProductListScreen());
    } catch (e) {
      Get.snackbar("Error", e.toString());
    }
  }

  void signup(String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
      isLoggedIn.value = true;
      Get.off(ProductListScreen());
    } catch (e) {
      Get.snackbar("Error", e.toString());
    }
  }

  void logout() async {
    await _auth.signOut();
    isLoggedIn.value = false;
    Get.offAll(AuthScreen());
  }
}
