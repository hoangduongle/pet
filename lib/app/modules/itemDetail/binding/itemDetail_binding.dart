import 'package:get/get.dart';
import 'package:pets/app/modules/itemDetail/controller/itemDetail_controller.dart';

class ItemDetailBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<ItemDetailController>(() => ItemDetailController());
  }

}