import 'package:get/get.dart';
import '../models/product.dart';

class CartController extends GetxController {
  var cartItems = <Product>[].obs;
  var orders = <Product>[].obs;

  void addToCart(Product product) {
    cartItems.add(product);
    update();
  }

  void placeOrder(Product product) {
    orders.add(product);
    update();
  }
}


