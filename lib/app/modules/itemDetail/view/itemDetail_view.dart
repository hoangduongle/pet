import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:pets/app/core/utils/number_utils.dart';
import 'package:pets/app/core/values/app_colors.dart';
import 'package:pets/app/core/values/font_weights.dart';
import 'package:pets/app/core/values/text_styles.dart';
import 'package:pets/app/core/widget/button.dart';
import 'package:pets/app/modules/itemDetail/controller/itemDetail_controller.dart';
import 'package:pets/app/route/app_routes.dart';

class ItemDetailScreen extends GetView<ItemDetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 40.h),
        child: Button(
          text: 'Thêm vào giỏ',
          outLine: false,
          ontap: () {
            controller.addToCart();
          },
        ),
      ),
      backgroundColor: AppColors.CFDFDFD,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
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
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Material(
              color: Colors.transparent,
              elevation: 0,
              child: InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () {
                  Get.toNamed(Routes.CART);
                },
                child: const Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.black,
                ),
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.network(
                controller.serviceData.value!.urlImage!,
                height: 400.h,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
              SizedBox(
                height: 430.h,
                child: SingleChildScrollView(
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 350.w,
                              child: Text(
                                controller.serviceData.value!.name!,
                                style: h5.copyWith(
                                    fontWeight: FontWeights.bold,
                                    fontSize: 22.sp),
                              ),
                            ),
                            Icon(
                              Icons.share_outlined,
                              size: 30.sp,
                              color: AppColors.C717171,
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.h),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              for (int i = 0; i < 5; i++)
                                Icon(
                                  Icons.star,
                                  color: AppColors.CFFCE31,
                                  size: 30.sp,
                                ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                '5.0',
                                style: h6.copyWith(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeights.bold),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                '99 đánh giá',
                                style: h6.copyWith(
                                    color: AppColors.CACACAC,
                                    fontSize: 13.sp,
                                    fontWeight: FontWeights.bold),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          'đ${NumberUtils.intToVnd(controller.serviceData.value!.price)}',
                          style: TextStyle(
                              fontSize: 24.sp,
                              color: const Color(0xff3D3D3D),
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          'Thông tin sản phẩm',
                          style: h5.copyWith(
                              fontWeight: FontWeights.bold,
                              fontSize: 20.sp,
                              color: AppColors.C4D4D4D),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          controller.serviceData.value!.description!,
                          style: h5.copyWith(
                              fontWeight: FontWeights.regular,
                              fontSize: 17.sp,
                              color: AppColors.C747474),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
