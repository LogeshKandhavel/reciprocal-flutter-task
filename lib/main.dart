import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'controllers/auth_controller.dart';
import 'screens/auth_screen.dart';
import 'screens/product_list_screen.dart';
import '../controllers/cart_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Get.put(AuthController());
  Get.put(CartController());
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(debugShowCheckedModeBanner:false,
      title: 'Shopping App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: AuthScreen(),
    );
  }
}
