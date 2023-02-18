import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:pets/app/core/values/app_colors.dart';
import 'package:pets/app/core/values/text_styles.dart';

class CircleCard extends StatelessWidget {
  final String text;
  final String image;
  final double width;
  final Function() ontap;
  const CircleCard({
    Key? key,
    required this.text,
    this.width = 92,
    required this.image,
    required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width.w,
      child: Column(
        children: [
          Material(
            elevation: 0,
            borderRadius: BorderRadius.circular(50.r),
            child: InkWell(
              borderRadius: BorderRadius.circular(50.r),
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: ontap,
              child: Container(
                width: 68.w,
                height: 68.h,
                decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(image), fit: BoxFit.fill), color: Colors.white, shape: BoxShape.circle),
              ),
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.h),
            child: Text(text, style: h5.copyWith(fontSize: 12.sp, color: AppColors.C808080)),
          )
        ],
      ),
    );
  }
}
