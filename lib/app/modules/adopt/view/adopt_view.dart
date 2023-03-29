import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pets/app/core/values/font_weights.dart';
import 'package:pets/app/modules/main/controller/main_controller.dart';
import 'package:pets/app/modules/petadopt/view/petadopt_view.dart';
import 'package:pets/app/modules/petowner/view/petowner_view.dart';
import '../../../core/values/app_colors.dart';
import '../../../core/values/text_styles.dart';

class AdoptScreen extends StatefulWidget {
  const AdoptScreen({super.key});

  @override
  State<AdoptScreen> createState() => _AdoptScreenState();
}

class _AdoptScreenState extends State<AdoptScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
            leading: Container(),
            title: Column(
              children: [
                Text(
                  'Địa chỉ của bạn',
                  style: h5.copyWith(color: AppColors.CACACAC, fontSize: 14.sp),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.location_pin,
                      color: Color(0xffFF7A00),
                    ),
                    Text(
                      'Long Thạnh Mỹ, Quận 9',
                      style: h4.copyWith(
                          color: AppColors.CFF7A00,
                          fontSize: 20.sp,
                          fontWeight: FontWeights.bold),
                    ),
                  ],
                )
              ],
            ),
            actions: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: InkWell(
                  onTap: () {
                    MainController mainController = Get.find<MainController>();
                    mainController.changeTab(3);
                  },
                  child: CircleAvatar(
                    radius: 20.r,
                    backgroundImage: const AssetImage('assets/png/avatar.png'),
                  ),
                ),
              ),
            ],
            bottom: TabBar(
                indicatorPadding: EdgeInsets.symmetric(horizontal: 15.w),
                labelPadding: EdgeInsets.only(bottom: 5.h),
                indicatorColor: Colors.black,
                tabs: [
                  Text('Nhận nuôi thú cưng',
                      style: h6.copyWith(
                          color: AppColors.C656565, fontSize: 15.sp)),
                  Text(
                    'Tìm chủ thú cưng',
                    style:
                        h6.copyWith(color: AppColors.C656565, fontSize: 15.sp),
                  )
                ]),
          ),
          body: TabBarView(children: [
            PetAdoptScreen(),
            PetOwnerScreen(),
          ]),
        ));
  }
}
