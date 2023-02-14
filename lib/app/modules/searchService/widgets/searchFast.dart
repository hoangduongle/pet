import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pets/app/core/values/app_colors.dart';
import 'package:pets/app/core/values/text_styles.dart';

class SearchFast extends StatelessWidget {
  final String text;
  final Function() ontap;

  const SearchFast({super.key, required this.text, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 0,
      color: Colors.transparent,
      child: InkWell(
        onTap: ontap,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          height: 30.h,
          decoration: BoxDecoration(color: AppColors.CCDCDCD, borderRadius: BorderRadius.circular(10.r)),
          child: Center(
            child: Text(text,
                style: h6.copyWith(
                  color: AppColors.C707070,
                  fontSize: 14.sp,
                )),
          ),
        ),
      ),
    );
  }
}
