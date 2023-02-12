import 'package:get/get.dart';
import 'package:pets/app/modules/serviceDetail/controller/serviceDetail_controller.dart';

class ServiceDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ServiceDetailController>(() => ServiceDetailController());
  }
}
