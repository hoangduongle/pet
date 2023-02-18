import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pets/app/core/values/app_colors.dart';
import 'package:pets/app/core/values/text_styles.dart';
import 'package:pets/app/modules/petadoptDetail/controller/petadoptDetail_controller.dart';
import 'package:pets/app/modules/petadoptDetail/view/detail.dart';
import 'package:pets/app/modules/petowner/view/petowner_view.dart';

class PetAdoptDetailScreen extends GetView<PetAdoptDetailController> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.arrow_back_ios,
              size: 22.sp,
              color: AppColors.C868686,
            ),
          ),
          title: Text(
            "${Get.arguments != null ? Get.arguments['animalTypeName'] : ''}",
            style: h6.copyWith(color: AppColors.C000000, fontSize: 23.sp),
          ),
          bottom: TabBar(
              indicatorPadding: EdgeInsets.symmetric(horizontal: 15.w),
              labelPadding: EdgeInsets.only(bottom: 5.h),
              indicatorColor: Colors.black,
              tabs: [
                Text('Nhận nuôi thú cưng',
                    style:
                        h6.copyWith(color: AppColors.C656565, fontSize: 15.sp)),
                Text(
                  'Tìm chủ thú cưng',
                  style: h6.copyWith(color: AppColors.C656565, fontSize: 15.sp),
                )
              ]),
        ),
        body: TabBarView(children: [
          DetailAdopt(),
          PetOwnerScreen(),
        ]),
      ),
    );
  }
}
