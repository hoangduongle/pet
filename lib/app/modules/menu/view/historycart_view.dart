import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pets/app/core/values/app_colors.dart';
import 'package:pets/app/core/values/text_styles.dart';
import '../controller/menutab_controller.dart';


class HistoryCartScreen extends GetView<MenuTabController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.Cf2f2f2,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Đơn Đã mua',
          style: h6.copyWith(color: Colors.black),
        ),
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: AppColors.C868686,
            size: 22.sp,
          ),
        ),
      ),
    );
  }
}
