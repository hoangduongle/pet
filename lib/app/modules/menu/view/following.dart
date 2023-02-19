import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pets/app/core/values/app_colors.dart';
import 'package:pets/app/core/values/font_weights.dart';
import 'package:pets/app/core/values/text_styles.dart';
import '../controller/menutab_controller.dart';

class FollowingScreen extends GetView<MenuTabController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.Cf2f2f2,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Shop đang theo dõi',
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 40.h,
          ),
          Container(
            height: 300.h,
            color: Colors.white,
            child: Column(
              children: [
                _list('Petcare', 'I think having an animal your life makes you a beter human'),
                _list('Pet Homie',
                    'Pet understand humans better than human do.'),
                _list('Dr.Trịnh',
                    'Một con Sen yêu nghề :))))'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _list(String name, String subText) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.w),
            child: CircleAvatar(
              foregroundColor: Colors.transparent,
              radius: 35.r,
              backgroundImage: const AssetImage('assets/png/avatar.png'),
            ),
          ),
          SizedBox(
            width: 30.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: h5.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeights.bold,
                    fontSize: 20.sp),
              ),
              Container(
                width: 250.w,
                child: Text(
                  subText,
                  maxLines: 2,
                  style: h5.copyWith(
                      color: const Color(0xff343434),
                      fontWeight: FontWeights.regular,
                      fontSize: 15.sp),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
