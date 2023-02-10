import 'package:get/get.dart';
import 'package:pets/app/modules/petadopt/controller/petadopt_controller.dart';

class PetAdoptBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PetAdoptController>(() => PetAdoptController());
  }
}
