import 'package:get/get.dart';
import 'package:pets/app/modules/petinfo/controller/petinfo_controller.dart';

class PetInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PetInfoController>(() => PetInfoController());
  }
}
