import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pets/app/modules/adopt/controller/adopt_controller.dart';
import 'package:pets/app/modules/adopt/view/adopt_view.dart';
import 'package:pets/app/modules/menu/controller/menutab_controller.dart';
import 'package:pets/app/modules/menu/view/menu_view.dart';
import 'package:pets/app/modules/petadopt/controller/petadopt_controller.dart';
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
  late PetAdoptController _petAdoptController;

  var currentTab = 0.obs;

  final List<Widget> _screens = [
    ServiceScreen(),
    const AdoptScreen(),
    ShoppingScreen(),
    const MenuScreen(),
  ];

  PageStorageBucket bucket = PageStorageBucket();
  Widget get currentScreen => _screens[currentTab.value];

  @override
  void onInit() {
    Get.back();
    initController();
    super.onInit();
  }

  void initController() {
    Get.put(
      ServiceController(),
      permanent: true,
    );
    _serviceController = Get.find<ServiceController>();
    _serviceController.onInit();

    Get.put(
      AdoptController(),
      permanent: true,
    );
    _adoptController = Get.find<AdoptController>();
    _adoptController.onInit();

    Get.put(PetAdoptController(), permanent: true);
    _petAdoptController = Get.find<PetAdoptController>();
    _petAdoptController.onInit();

    Get.put(
      ShoppingController(),
      permanent: true,
    );
    _shoppingController = Get.find<ShoppingController>();
    _shoppingController.onInit();

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
        _serviceController.onInit();
        break;
      case 1:
        _adoptController.onInit();
        break;
      case 2:
        _shoppingController.onInit();
        break;
      case 3:
        _shoppingController.onInit();
        break;
    }
  }
}
