import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pets/app/core/values/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BuildIndicator extends StatelessWidget {
  int length;
  int currentIndex;
  BuildIndicator({
    Key? key,
    required this.length,
    required this.currentIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSmoothIndicator(
      curve: Curves.easeInOut,
      activeIndex: currentIndex,
      count: length,
      effect: SlideEffect(dotHeight: 15.h, dotWidth: 15.w, spacing: 20.w, dotColor: Colors.grey.withOpacity(.3), activeDotColor: AppColors.C686868),
    );
  }
}
