import 'package:get/get.dart';
import 'package:pets/app/modules/promotion/controller/promotion_controller.dart';

class PromotionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PromotionController>(() => PromotionController());
  }
}
