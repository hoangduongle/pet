import 'package:get/get.dart';
import 'package:pets/app/modules/serviceSelect/controller/serviceSelect_controller.dart';

class ServiceSelectBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<ServiceSelectController>(() => ServiceSelectController());
  }

}