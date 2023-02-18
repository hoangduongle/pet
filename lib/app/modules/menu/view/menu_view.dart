import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pets/app/core/values/app_colors.dart';
import 'package:pets/app/core/values/font_weights.dart';
import 'package:pets/app/core/values/text_styles.dart';
import 'package:pets/app/modules/menu/controller/menutab_controller.dart';
import 'package:pets/app/modules/menu/view/following.dart';
import 'package:pets/app/modules/menu/view/help.dart';
import 'package:pets/app/modules/menu/view/historycart_view.dart';
import 'package:pets/app/modules/menu/view/postsave_view.dart';
import 'package:pets/app/modules/menu/view/setting.dart';
import 'package:pets/app/modules/menu/view/ususally_service.dart';

class MenuScreen extends GetView<MenuTabController> {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.Cf2f2f2,
        body: Column(
          children: [
            Container(
              height: 200.h,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Menu',
                          style: h5.copyWith(fontWeight: FontWeights.bold),
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.search,
                              color: AppColors.C343434,
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            const Icon(
                              Icons.mail_outline,
                              color: AppColors.C343434,
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 0.w),
                          child: CircleAvatar(
                            foregroundColor: Colors.transparent,
                            radius: 40.r,
                            backgroundImage:
                                const AssetImage('assets/png/avatar.png'),
                          ),
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                'Nguyen Quynh Nga',
                                style: h5.copyWith(
                                    fontWeight: FontWeights.bold,
                                    fontSize: 18.sp),
                              ),
                            ),
                            Container(
                              child: Text(
                                'Sen Tích Cực',
                                style: h5.copyWith(
                                    fontWeight: FontWeights.regular,
                                    color: const Color(0xff9D9D9D),
                                    fontSize: 13.sp),
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 245.h,
              color: AppColors.Cffffff,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
                child: Column(
                  children: [
                    _list('Đơn đã mua', Icons.shopping_bag_rounded, () {
                      Get.to(() => HistoryCartScreen(),
                          transition: Transition.rightToLeft);
                    }),
                    _divider(),
                    _list('Bài viết đã lưu', Icons.bookmark_border, () {
                      Get.to(() => PostSaveScreen(),
                          transition: Transition.rightToLeft);
                    }),
                    _divider(),
                    _list('Dịch vụ hay dùng', Icons.bookmark_border, () {
                      Get.to(() => UsuallyServiceScreen(),
                          transition: Transition.rightToLeft);
                    }),
                    _divider(),
                    _list('Đang theo dõi', Icons.people_outline, () {
                      Get.to(() => FollowingScreen(),
                          transition: Transition.rightToLeft);
                    }),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 135.h,
              color: AppColors.Cffffff,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
                child: Column(
                  children: [
                    _list('Cài đặt', Icons.settings, () {
                      Get.to(() => SettingScreen(),
                          transition: Transition.rightToLeft);
                    }),
                    _divider(),
                    _list('Trợ giúp', Icons.help_outline_sharp, () {
                      Get.to(() => HelpScreen(),
                          transition: Transition.rightToLeft);
                    }),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 165.h,
            ),
            Text(
              "V1.0.0",
              style: h5.copyWith(
                  color: AppColors.C656565,
                  fontWeight: FontWeights.bold,
                  fontSize: 15.sp),
            ),
          ],
        ),
      ),
    );
  }

  Widget _divider() {
    return Container(
      margin: EdgeInsetsDirectional.only(start: 1.r, end: 1.r),
      height: 1.0,
      color: Colors.grey.withOpacity(0.8.r),
    );
  }

  Widget _list(String text, IconData icons, Function() ontap) {
    return Material(
      color: Colors.transparent,
      elevation: 0,
      child: InkWell(
        onTap: ontap,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h),
          child: Row(
            children: [
              Icon(
                icons,
                size: 30.sp,
              ),
              SizedBox(
                width: 10.w,
              ),
              Text(
                text,
                style: h5.copyWith(
                    fontSize: 15.sp, fontWeight: FontWeights.medium),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
