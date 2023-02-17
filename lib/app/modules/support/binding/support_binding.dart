import 'package:get/get.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:pets/app/modules/support/controller/support_controller.dart';

class SupportBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SupportController>(() => SupportController());
  }
}
