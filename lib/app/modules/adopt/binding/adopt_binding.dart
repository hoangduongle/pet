import 'package:get/get.dart';
import 'package:pets/app/modules/adopt/controller/adopt_controller.dart';

class AdoptBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdoptController>(() => AdoptController());
  }
}
