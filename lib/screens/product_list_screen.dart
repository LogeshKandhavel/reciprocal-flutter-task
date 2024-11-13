import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/product_controller.dart';
import '../models/product.dart';
import '../screens/product_detail_screen.dart';
import '../widgets/drawer_widget.dart';

class ProductListScreen extends StatelessWidget {
  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Products')),
      drawer: DrawerWidget(),
      body: Obx(() {
        if (productController.products.isEmpty) {
          return Center(child: CircularProgressIndicator());
        }
        return ListView.builder(
          itemCount: productController.products.length,
          itemBuilder: (ctx, index) {
            final Product product = productController.products[index];
            return ListTile(
              title: Text(product.title),
              leading: Image.network(product.image, height: 50, width: 50),
              subtitle: Text('\$${product.price}'),
              onTap: () {
                Get.to(() => ProductDetailScreen(product: product));
              },
            );
          },
        );
      }),
    );
  }
}



