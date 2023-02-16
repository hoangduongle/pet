import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pets/app/core/values/app_colors.dart';
import 'package:pets/app/core/values/font_weights.dart';
import 'package:pets/app/core/values/text_styles.dart';
import 'package:pets/app/core/widget/button.dart';
import 'package:pets/app/route/app_routes.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  bool cbAll = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.Cf7f7f7,
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
        title: Text(
          "Giỏ Hàng",
          style: h5.copyWith(fontWeight: FontWeights.bold, color: AppColors.C000000),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Checkbox(
                  activeColor: AppColors.CFF7A00,
                  value: cbAll,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.r)),
                  onChanged: (value) {
                    setState(() {
                      cbAll = value!;
                    });
                  },
                ),
                Text(
                  'Chọn tất cả',
                  style: h5.copyWith(color: AppColors.C595959, fontSize: 15.sp),
                )
              ],
            ),
          ),
          SizedBox(
            height: 630.h,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  for (int i = 0; i < 5; i++) card(),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 25.h),
            child: Button(
              text: "Trang thanh toán - đ225,000",
              outLine: false,
              ontap: () {
                Get.toNamed(Routes.ORDER);
              },
            ),
          )
        ],
      ),
    );
  }

  Widget card() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
      child: Container(
        height: 150.h,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.r), color: Colors.white),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.all(12.r),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.r),
                    child: Image.asset(
                      'assets/png/petycarecenter.png',
                      width: 110.w,
                      height: 115.h,
                      fit: BoxFit.cover,
                    )),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 200.w,
                      child: const Text(
                        'Combo 5 gói pate Catchy vị cá ngừ 70g',
                        style: TextStyle(color: AppColors.C000000, fontWeight: FontWeights.medium),
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(
                          width: 200.w,
                          child: Text(
                            'đ240,000',
                            style: h5.copyWith(
                              fontSize: 15.sp,
                              color: AppColors.C949494,
                              fontWeight: FontWeights.regular,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 200.w,
                          child: Text(
                            'đ210,000',
                            style: h5.copyWith(fontSize: 25.sp, color: AppColors.CFF7A00, fontWeight: FontWeights.bold),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Checkbox(
              activeColor: AppColors.CFF7A00,
              value: cbAll,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.r)),
              onChanged: (value) {},
            ),
          ],
        ),
      ),
    );
  }
}