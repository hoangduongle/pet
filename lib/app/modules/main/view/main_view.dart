import 'package:antdesign_icons/antdesign_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pets/app/modules/adopt/view/adopt_view.dart';
import 'package:pets/app/modules/main/controller/main_controller.dart';
import 'package:pets/app/modules/serivce/view/service_view.dart';
import 'package:pets/app/modules/shopping/view/shopping_view.dart';

import '../widgets/nav_button.dart';

class MainScreen extends GetView<MainController> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    ServiceScreen(),
    AdoptScreen(),
    ShoppingScreen(),
    Text(
      'Index 3: Menu',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        body: Obx(() => PageStorage(
            bucket: controller.bucket, child: controller.currentScreen)),
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 20.h,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            height: 65.h,
            child: Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  NavButton(
                    title: 'Dịch vụ',
                    icon: AntIcons.heartFilled,
                    iconOutlined: AntIcons.heartOutlined,
                    onPressed: () {
                      controller.changeTab(0);
                    },
                    state: controller.currentTab.value == 0,
                  ),
                  SizedBox(
                    width: 4.w,
                  ),
                  NavButton(
                    title: 'Nhận nuôi',
                    icon: AntIcons.searchOutlined,
                    iconOutlined: AntIcons.searchOutlined,
                    onPressed: () {
                      controller.changeTab(1);
                    },
                    state: controller.currentTab.value == 1,
                  ),
                  SizedBox(
                    width: 4.w,
                  ),
                  NavButton(
                    title: 'Mua sắm',
                    icon: Icons.shopping_cart,
                    iconOutlined: AntIcons.shoppingCartOutlined,
                    onPressed: () {
                      controller.changeTab(2);
                    },
                    state: controller.currentTab.value == 2,
                  ),
                  SizedBox(
                    width: 4.w,
                  ),
                  NavButton(
                    title: 'Menu',
                    icon: AntIcons.menuUnfoldOutlined,
                    iconOutlined: Icons.menu,
                    onPressed: () {
                      controller.changeTab(3);
                    },
                    state: controller.currentTab.value == 3,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
