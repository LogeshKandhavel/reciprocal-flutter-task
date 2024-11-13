import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/auth_controller.dart';
import '../screens/orders_screen.dart';
import '../screens/cart_screen.dart';

class DrawerWidget extends StatelessWidget {
  final AuthController authController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Text("Menu", style: TextStyle(fontSize: 24, color: Colors.white)),
            decoration: BoxDecoration(color: Colors.blue),
          ),
          ListTile(
            title: Text("My Orders"),
            onTap: () => Get.to(() => OrdersScreen()),
          ),
          ListTile(
            title: Text("Cart"),
            onTap: () => Get.to(() => CartScreen()),
          ),
          ListTile(
            title: Text("Logout"),
            onTap: () {
              authController.logout();
              Get.back();
            },
          ),
        ],
      ),
    );
  }
}
