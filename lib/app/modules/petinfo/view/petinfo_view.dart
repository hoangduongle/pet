import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pets/app/core/values/app_colors.dart';
import 'package:pets/app/core/values/font_weights.dart';
import 'package:pets/app/core/values/text_styles.dart';
import 'package:pets/app/core/widget/button.dart';
import 'package:pets/app/modules/petinfo/controller/petinfo_controller.dart';
import 'package:url_launcher/url_launcher.dart';

class PetInfoScreen extends GetView<PetInfoController> {
  @override
  Widget build(BuildContext context) {
    controller.onInit();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
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
        title: Text("",
            style: h6.copyWith(color: AppColors.C000000, fontSize: 23.sp)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Image.network(
                  controller.petOwner.value!.urlImage!,
                  height: 300.h,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: Text(
                  controller.petOwner.value!.nickname!,
                  style: h6.copyWith(
                      fontSize: 24.sp, fontWeight: FontWeights.medium),
                ),
              ),
              SizedBox(
                height: 80.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Ngày sinh : ${controller.petOwner.value!.date}',
                      style:
                          TextStyle(fontSize: 13.sp, color: AppColors.C7A7A7A),
                    ),
                    Text(
                      'Tuổi : 16 tháng ',
                      style:
                          TextStyle(fontSize: 13.sp, color: AppColors.C7A7A7A),
                    ),
                    Text(
                      controller.petOwner.value!.description!,
                      style:
                          TextStyle(fontSize: 13.sp, color: AppColors.C7A7A7A),
                    ),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: TextStyle(
                            fontSize: 13.sp, color: AppColors.C7A7A7A),
                        children: <TextSpan>[
                          const TextSpan(text: 'Liên hệ: '),
                          TextSpan(
                              text: '${controller.petOwner.value!.contact}',
                              style: const TextStyle(color: AppColors.CD34E4E)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: Text(
                  'Mô tả',
                  style: h6.copyWith(
                      fontSize: 16.sp,
                      color: AppColors.C292929,
                      fontWeight: FontWeights.medium),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
                height: 140.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: AppColors.Cf4f4f4,
                    borderRadius: BorderRadius.circular(14.r)),
                child: Text(
                  controller.petOwner.value!.description!,
                  style: h6.copyWith(fontSize: 14.sp, color: AppColors.C7A7A7A),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: Text(
                  'Yêu cầu',
                  style: h6.copyWith(
                      fontSize: 16.sp,
                      color: AppColors.C292929,
                      fontWeight: FontWeights.medium),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
                height: 60.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: AppColors.Cf4f4f4,
                    borderRadius: BorderRadius.circular(14.r)),
                child: Text(
                  controller.petOwner.value!.request!,
                  style: h6.copyWith(fontSize: 14.sp, color: AppColors.C7A7A7A),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 40.h),
                  child: Button(
                    text: 'Liên hệ ngay',
                    outLine: false,
                    ontap: () {
                      String phoneNumber = controller.petOwner.value!.contact!;
                      launch("tel://$phoneNumber");
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
