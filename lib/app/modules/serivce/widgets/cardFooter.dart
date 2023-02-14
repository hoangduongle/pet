import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pets/app/core/values/app_colors.dart';
import 'package:pets/app/core/values/font_weights.dart';
import 'package:pets/app/core/values/text_styles.dart';

class CardFooter extends StatelessWidget {
  const CardFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.r),
          child: Image.asset(
            'assets/png/petycarecenter.png',
            width: 80.w,
            height: 64.h,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Pety Care Center",
                style: h3.copyWith(fontWeight: FontWeights.bold, fontSize: 12.sp),
              ),
              SizedBox(
                height: 3.h,
              ),
              SizedBox(
                width: 180.w,
                child: Text(
                  "Tư vấn sức khoẻ Online, khám lâm sàng và chích ngừa tại nhà.",
                  style: h3.copyWith(fontSize: 10.sp),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: AppColors.CFFE600,
                    size: 16.r,
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Text('5.0', style: h6.copyWith(color: AppColors.C2D2D2D, fontWeight: FontWeights.bold, fontSize: 12.sp)),
                  SizedBox(
                    width: 8.w,
                  ),
                  Text('(99)', style: h6.copyWith(color: AppColors.C2D2D2D, fontWeight: FontWeights.regular, fontSize: 12.sp))
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
