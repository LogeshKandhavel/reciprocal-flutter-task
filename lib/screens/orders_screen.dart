import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/cart_controller.dart';

class OrdersScreen extends StatelessWidget {
  final CartController cartController = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Orders")),
      body: Obx(() {
        if (cartController.orders.isEmpty) {
          return Center(child: Text("No orders placed yet"));
        }
        return ListView.builder(
          itemCount: cartController.orders.length,
          itemBuilder: (ctx, index) {
            final product = cartController.orders[index];
            return ListTile(
              title: Text(product.title),
              leading: Image.network(product.image, height: 50, width: 50),
              subtitle: Text("\$${product.price}"),
            );
          },
        );
      }),
    );
  }
}
