import 'package:get/get.dart';
import 'package:sale_app1_vscode/model/product_model.dart';

class ProductController extends GetxController {
  RxList<ProductModel> products = <ProductModel>[].obs;
  void addUser(ProductModel product) async {
    products.add(product);
    update();
  }
}
