import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/cart_controller.dart';

class CartScreen extends StatelessWidget {
  final CartController cartController = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Your Cart")),
      body: Obx(() {
        if (cartController.cartItems.isEmpty) {
          return Center(child: Text("Your cart is empty"));
        }
        return ListView.builder(
          itemCount: cartController.cartItems.length,
          itemBuilder: (ctx, index) {
            final product = cartController.cartItems[index];
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

