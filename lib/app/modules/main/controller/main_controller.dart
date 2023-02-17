import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pets/app/modules/adopt/controller/adopt_controller.dart';
import 'package:pets/app/modules/adopt/view/adopt_view.dart';
import 'package:pets/app/modules/menu/controller/menutab_controller.dart';
import 'package:pets/app/modules/menu/view/menu_view.dart';
import 'package:pets/app/modules/serivce/controller/service_controller.dart';
import 'package:pets/app/modules/serivce/view/service_view.dart';
import 'package:pets/app/modules/shopping/controller/shopping_controller.dart';
import 'package:pets/app/core/base/base_controller.dart';
import 'package:pets/app/modules/shopping/view/shopping_view.dart';

class MainController extends BaseController {
  late ServiceController _serviceController;
  late AdoptController _adoptController;
  late ShoppingController _shoppingController;
  late MenuTabController _menuController;

  var currentTab = 0.obs;

  final List<Widget> _screens = [
    const ServiceScreen(),
    const AdoptScreen(),
    const ShoppingScreen(),
    const MenuScreen(),
  ];

  PageStorageBucket bucket = PageStorageBucket();
  Widget get currentScreen => _screens[currentTab.value];

  @override
  void onInit() {
    initController();
    super.onInit();
  }

  void initController() {
    Get.put(
      ServiceController(),
      permanent: true,
    );
    _serviceController = Get.find<ServiceController>();
    _serviceController.init();

    Get.put(
      AdoptController(),
      permanent: true,
    );
    _adoptController = Get.find<AdoptController>();
    _adoptController.init();

    Get.put(
      ShoppingController(),
      permanent: true,
    );
    _shoppingController = Get.find<ShoppingController>();
    _shoppingController.init();

    Get.put(
      MenuTabController(),
      permanent: true,
    );
    _menuController = Get.find<MenuTabController>();
    _menuController.init();
  }

  void changeTab(int index) {
    currentTab.value = index;
    switch (index) {
      case 0:
        _serviceController.init();
        break;
      case 1:
        _adoptController.init();
        break;
      case 2:
        _shoppingController.init();
        break;
      case 3:
        _shoppingController.init();
        break;
    }
  }
}
