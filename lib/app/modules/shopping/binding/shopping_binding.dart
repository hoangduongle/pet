import 'package:get/get.dart';
import 'package:pets/app/modules/shopping/controller/shopping_controller.dart';

class ShoppingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ShoppingController>(() => ShoppingController());
  }
}
