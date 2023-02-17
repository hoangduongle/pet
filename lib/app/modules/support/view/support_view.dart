import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pets/app/core/values/app_colors.dart';
import 'package:pets/app/core/values/font_weights.dart';
import 'package:pets/app/core/values/text_styles.dart';
import 'package:pets/app/modules/support/controller/support_controller.dart';

class SupportScreen extends GetView<SupportController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.Cf2f2f2,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
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
        title: Text("Petini Care",
            style: h6.copyWith(color: AppColors.C000000, fontSize: 23.sp)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "October 16, 2022",
              style: h6.copyWith(color: AppColors.CBEBEBE, fontSize: 15.sp),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: CircleAvatar(
                    radius: 20.r,
                    backgroundImage: const AssetImage('assets/png/avatar.png'),
                  ),
                ),
                Container(
                  width: 280.w,
                  height: 95.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.r),
                      color: AppColors.Cffffff),
                  child: Padding(
                    padding: EdgeInsets.all(8.r),
                    child: Text(
                      "Xin chào Luân Ty, có thắc mắc về sức khoẻ thú cưng hay về các dịch vụ của Petini Care ? Đội ngũ chuyên viên của chúng tôi có thể giúp sức khoẻ của Boss nhà bạn tốt hơn. Hãy nhập câu hỏi của bạn dưới đây nhé.",
                      textAlign: TextAlign.left,
                      style: h6.copyWith(
                          color: AppColors.C535353,
                          fontSize: 12.sp,
                          fontWeight: FontWeights.regular),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 340.w,
                    height: 40.h,
                    child: TextField(
                      cursorColor: AppColors.C707070,
                      autofocus: true,
                      decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 16.w),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: AppColors.CD8D8D8),
                              borderRadius: BorderRadius.circular(16.r)),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: AppColors.CD8D8D8),
                              borderRadius: BorderRadius.circular(16.r)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16.r)),
                          hintText: 'Nhắn tin...',
                          hintStyle: h6.copyWith(
                            color: AppColors.CBFBFBF,
                            fontSize: 14.sp,
                          )),
                    ),
                  ),
                  Icon(Icons.image_outlined,
                      size: 40.sp, color: AppColors.CBEBEBE),
                ],
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
          ],
        ),
      ),
    );
  }
}
