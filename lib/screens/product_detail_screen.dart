import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/cart_controller.dart';
import '../models/product.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;
  final CartController cartController = Get.find<CartController>();

  ProductDetailScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.title)),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(product.image, height: 200, fit: BoxFit.cover),
            SizedBox(height: 16),
            Text(product.title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text("\$${product.price}", style: TextStyle(fontSize: 18, color: Colors.grey)),
            SizedBox(height: 8),
            Text(product.description),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    cartController.addToCart(product);
                    Get.snackbar("Added to Cart", "${product.title} has been added to your cart.");
                  },
                  child: Text("Add to Cart"),
                ),
                ElevatedButton(
                  onPressed: () {
                    cartController.placeOrder(product);
                    Get.snackbar("Order Placed", "${product.title} has been ordered.");
                    Future.delayed(Duration(seconds: 1), () {
                      Get.back();
                    });
                  },
                  child: Text("Order Now"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


