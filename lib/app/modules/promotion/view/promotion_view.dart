import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pets/app/core/values/app_colors.dart';
import 'package:pets/app/core/values/font_weights.dart';
import 'package:pets/app/core/values/text_styles.dart';
import 'package:pets/app/modules/promotion/controller/promotion_controller.dart';

class PromotionScreen extends GetView<PromotionController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.Cf2f2f2,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        flexibleSpace: const Image(
          image: AssetImage('assets/png/appbarBackground.png'),
          fit: BoxFit.fill,
        ),
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
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.h,
            ),
            Container(
              width: 366.w,
              height: 80.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: AppColors.Cffffff),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            style: TextStyle(
                                fontSize: 20.sp, color: AppColors.C000000),
                            children: <TextSpan>[
                              TextSpan(text: '0', style: h6.copyWith()),
                              TextSpan(
                                  text: ' xu',
                                  style: h6.copyWith(fontSize: 15.sp)),
                            ],
                          ),
                        ),
                        Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.w, vertical: 5.h),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14.r),
                                color: AppColors.CFF7A00),
                            child: Text(
                              'Sử dụng ngay',
                              style: h6.copyWith(
                                  color: AppColors.CF7F8FD, fontSize: 18.sp),
                            ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Text(
                      "Mẹo: Bạn có thể dùng Xu để đổi lấy các mã giảm giá khác.",
                      style: h6.copyWith(
                          color: AppColors.C717171,
                          fontWeight: FontWeights.regular,
                          fontSize: 11.sp),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Text(
              'Ưu đãi nổi bật',
              style: h5.copyWith(fontWeight: FontWeights.bold),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 142.w),
              child: Text(
                'Mã giảm giá trống',
                style: h6.copyWith(fontSize: 10.sp, color: AppColors.C7D7D7D),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
