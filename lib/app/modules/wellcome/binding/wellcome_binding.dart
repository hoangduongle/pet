import 'package:get/get.dart';
import 'package:pets/app/modules/wellcome/controller/wellcome_controller.dart';

class WellcomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WellcomeController>(() => WellcomeController());

  }
}
