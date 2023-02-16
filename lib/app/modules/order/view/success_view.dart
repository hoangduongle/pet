import 'package:flutter/material.dart'; 
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pets/app/core/values/app_colors.dart';
import 'package:pets/app/core/values/font_weights.dart';

class SuccessOther extends StatelessWidget {
  const SuccessOther({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffECECEC),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: const BoxDecoration(color: AppColors.Cffffff, shape: BoxShape.circle),
              child: Icon(
                Icons.check_circle,
                size: 200.sp,
                color: AppColors.CFF7A00,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Thank you !",
              style: TextStyle(
                fontWeight: FontWeights.bold,
                fontSize: 50.sp,
                color: AppColors.CFF7A00,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Bạn đã tạo đơn thành công",
              style: TextStyle(
                fontWeight: FontWeights.bold,
                fontSize: 25.sp,
                color: AppColors.CFF7A00,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
