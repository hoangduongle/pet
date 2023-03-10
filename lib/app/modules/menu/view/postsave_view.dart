import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pets/app/core/values/app_colors.dart';
import 'package:pets/app/core/values/font_weights.dart';
import 'package:pets/app/core/values/text_styles.dart';
import '../controller/menutab_controller.dart';

class PostSaveScreen extends GetView<MenuTabController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.Cf2f2f2,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Bài viết đã lưu',
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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            child: Text(
              'Hôm nay',
              style: h6.copyWith(
                  fontSize: 15.sp,
                  color: const Color(0xff676767),
                  fontWeight: FontWeights.bold),
            ),
          ),
          Container(
            height: 300.h,
            color: Colors.white,
            child: Column(
              children: [
                _list('Bu Mun', 'Nhà có 1 chiếc mèo thích hóng hớt'),
                _list('Anh Thu',
                    'Ai bảo mèo tây không biết bắt chuột đấy :)))) Chắc là không bắt được đâu.'),
                _list('Tri Phan',
                    'Chuột hay là con heo không biết nữa, béo quá đi ><'),
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
