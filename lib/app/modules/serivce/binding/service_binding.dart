import 'package:get/get.dart';
import 'package:pets/app/modules/serivce/controller/service_controller.dart';

class ServiceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ServiceController>(() => ServiceController());
  }
}
