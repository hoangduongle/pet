import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pets/app/core/values/app_colors.dart';
import 'package:pets/app/core/values/font_weights.dart';
import 'package:pets/app/core/values/text_styles.dart';

class CardFooter extends StatelessWidget {
  final String image;
  final String titleText;
  final String subText;
  final double rate;
  final double number;
  const CardFooter(
      {super.key,
      required this.image,
      required this.titleText,
      required this.subText,
      required this.rate,
      required this.number});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.r),
          child: Image.network(
            image,
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
                titleText,
                style:
                    h3.copyWith(fontWeight: FontWeights.bold, fontSize: 12.sp),
              ),
              SizedBox(
                height: 3.h,
              ),
              SizedBox(
                width: 180.w,
                child: Text(
                  subText,
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
                  Text('$rate.0',
                      style: h6.copyWith(
                          color: AppColors.C2D2D2D,
                          fontWeight: FontWeights.bold,
                          fontSize: 12.sp)),
                  SizedBox(
                    width: 8.w,
                  ),
                  Text('($number)',
                      style: h6.copyWith(
                          color: AppColors.C2D2D2D,
                          fontWeight: FontWeights.regular,
                          fontSize: 12.sp))
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
