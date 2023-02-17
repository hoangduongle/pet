import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pets/app/core/values/app_colors.dart';
import 'package:pets/app/core/values/font_weights.dart';
import 'package:pets/app/core/values/text_styles.dart';
import 'package:pets/app/core/widget/button.dart';
import 'package:pets/app/route/app_routes.dart';

import '../../serivce/widgets/cardFooter.dart';

class ServiceDetailScreen extends StatefulWidget {
  const ServiceDetailScreen({super.key});

  @override
  State<ServiceDetailScreen> createState() => _ServiceDetailScreenState();
}

class _ServiceDetailScreenState extends State<ServiceDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.CFDFDFD,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/png/servicedetail.png'),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.check_circle_rounded,
                        color: AppColors.CFF7A00,
                        size: 40.sp,
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        'Đã xác thực',
                        style: TextStyle(
                            color: AppColors.CFF7A00,
                            fontWeight: FontWeight.bold,
                            fontSize: 25.sp),
                      ),
                    ],
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.w, vertical: 8.h),
                    height: 34.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.r),
                      color: const Color(0xfffffade),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 20.sp,
                          color: Colors.yellow,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          '4.9',
                          style: h5.copyWith(
                              fontSize: 17.sp,
                              fontWeight: FontWeights.bold,
                              color: AppColors.C2D2D2D),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
                    height: 34.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.r),
                      color: const Color(0xffffd0d0),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 20.sp,
                          color: const Color(0xffe78a00),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          '10+',
                          style: h5.copyWith(
                              fontSize: 17.sp,
                              fontWeight: FontWeights.bold,
                              color: AppColors.C2D2D2D),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25.w),
              child: Text(
                'Petini Care',
                style:
                    h5.copyWith(fontWeight: FontWeights.bold, fontSize: 22.sp),
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Container(
              padding: EdgeInsets.only(left: 25.w),
              width: 320.w,
              child: Text(
                'Pet Hour / Day care & Month care - Home care service Pet Playground & Pet Bathing - Hotel',
                style: h6.copyWith(
                    color: AppColors.C838383,
                    fontSize: 12.sp,
                    fontWeight: FontWeights.regular),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 20.h),
              child: Container(
                height: 140.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  color: Color.fromARGB(255, 220, 220, 220),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '4.9',
                        style: h6.copyWith(
                            fontSize: 30.sp, fontWeight: FontWeights.bold),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        '35 đánh giá',
                        style: h6.copyWith(
                            fontSize: 18.sp,
                            fontWeight: FontWeights.bold,
                            color: AppColors.C8E8E8E),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      for (int i = 0; i < 5; i++)
                        const Icon(
                          Icons.star,
                          color: AppColors.CFFE600,
                        ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            // for (int i = 0; i < 5; i++)
            //   Padding(
            //     padding: EdgeInsets.only(left: 25.w, top: 20.h),
            //     child: CardFooter(),
            //   ),
            Button(text: 'Click', outLine: false, ontap: () {
              Get.toNamed(Routes.SERVICESELECT);
            },),
            SizedBox(
              height: 60.h,
            ),
          ],
        ),
      ),
    );
  }
}
