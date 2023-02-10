import 'package:get/get.dart';
import 'package:pets/app/modules/petadoptDetail/controller/petadoptDetail_controller.dart';

class PetAdoptDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PetAdoptDetailController>(() => PetAdoptDetailController());
  }
}
