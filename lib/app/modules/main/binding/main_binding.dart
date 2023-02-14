import 'package:get/get.dart';
import 'package:pets/app/modules/adopt/controller/adopt_controller.dart';
import 'package:pets/app/modules/main/controller/main_controller.dart';
import 'package:pets/app/modules/serivce/controller/service_controller.dart';
import 'package:pets/app/modules/shopping/controller/shopping_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(MainController());
    Get.put(ServiceController(), permanent: true);
    Get.put(AdoptController(), permanent: true);
    Get.put(ShoppingController(), permanent: true);
  }
}
