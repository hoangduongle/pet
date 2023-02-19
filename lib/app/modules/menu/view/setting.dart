import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pets/app/core/values/app_colors.dart';
import 'package:pets/app/core/values/text_styles.dart';
import '../controller/menutab_controller.dart';

class SettingScreen extends GetView<MenuTabController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.Cffffff,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Cài đặt',
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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 50.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'CÀI ĐẶT TÀI KHOẢN',
              style: h6.copyWith(color: const Color(0xff656565)),
            ),
            SizedBox(
              height: 20.h,
            ),
            _row(Icons.account_circle, 'Thông tin cá nhân'),
            SizedBox(
              height: 10.h,
            ),
            _row(Icons.delete_forever, 'Xoá tài khoản'),
            SizedBox(
              height: 30.h,
            ),
            Text(
              'NỘI DUNG',
              style: h6.copyWith(color: const Color(0xff656565)),
            ),
            SizedBox(
              height: 20.h,
            ),
            _row(Icons.mode_night_sharp, 'Chế độ ban đêm'),
            SizedBox(
              height: 10.h,
            ),
            _row(Icons.language, 'Ngôn ngữ'),
            SizedBox(
              height: 400.h,
            ),
            Center(
              child: InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () {
                  
                },
                child: Text(
                  'Đăng xuất',
                  style: h6.copyWith(
                      color: const Color(0xffFF3A3A), fontSize: 20.sp),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _row(IconData icon, String text) {
    return Row(
      children: [
        Icon(
          icon,
          size: 30.sp,
        ),
        SizedBox(
          width: 20.w,
        ),
        Text(
          text,
          style: h6.copyWith(),
        )
      ],
    );
  }
}
