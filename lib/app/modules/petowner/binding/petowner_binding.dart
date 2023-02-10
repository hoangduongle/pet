import 'package:get/get.dart';
import 'package:pets/app/modules/petowner/controller/petowner_controller.dart';

class PetOwnerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PetOwnerController>(() => PetOwnerController());
  }
}
