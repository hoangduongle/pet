
import 'package:get/get.dart';

import '../controller/menutab_controller.dart';

class MenuBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<MenuTabController>(() => MenuTabController());
  }

}