import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pets/app/core/model/service.dart';
import 'package:pets/app/core/utils/number_utils.dart';
import 'package:pets/app/core/values/app_colors.dart';
import 'package:pets/app/core/values/font_weights.dart';
import 'package:pets/app/core/values/text_styles.dart';
import 'package:pets/app/modules/searchService/controller/searchService_controller.dart';
import 'package:pets/app/modules/searchService/widgets/searchFast.dart';
import 'package:pets/app/route/app_routes.dart';

class SearchServiceScreen extends GetView<SearchServiceController> {
  @override
  Widget build(BuildContext context) {
    controller.onInit();

    return Scaffold(
      backgroundColor: AppColors.Cf2f2f2,
      appBar: AppBar(
        toolbarHeight: 115,
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  child: Container(
                    width: 300.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: AppColors.CD8D8D8,
                    ),
                    child: TextField(
                      controller: controller.searchTextController,
                      cursorColor: AppColors.C707070,
                      autofocus: true,
                      onChanged: (value) {
                        debugPrint(value);
                      },
                      decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 10.w),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: AppColors.CD8D8D8),
                              borderRadius: BorderRadius.circular(10.r)),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: AppColors.CD8D8D8),
                              borderRadius: BorderRadius.circular(10.r)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r)),
                          hintText: 'Tìm kiếm dịch vụ và phòng khám',
                          hintStyle: h6.copyWith(
                            color: AppColors.C707070,
                            fontSize: 14.sp,
                          )),
                    ),
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    Get.back();
                  },
                  child: Text(
                    "Thoát",
                    style: h6.copyWith(
                        fontSize: 19.sp,
                        color: AppColors.CEA7509,
                        fontWeight: FontWeights.bold),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SearchFast(
                  text: 'Spa & Grooming',
                  ontap: () {
                    controller.searchTextController.text = 'Spa & Grooming';
                  },
                ),
                SizedBox(
                  width: 10.w,
                ),
                SearchFast(
                  text: 'Mèo',
                  ontap: () {
                    controller.searchTextController.text = 'Mèo';
                  },
                ),
                SizedBox(
                  width: 10.w,
                ),
                SearchFast(
                  text: 'Chó',
                  ontap: () {
                    controller.searchTextController.text = 'Chó';
                  },
                ),
              ],
            )
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          child: Obx(() => Column(
                children: [
                  controller.serviceData.value.isEmpty
                      ? Container()
                      : Column(
                          children: [
                            for (int i = 0;
                                i < controller.serviceData.value.length;
                                i++)
                              cardService(
                                  controller.serviceData.value[i].urlImage!,
                                  controller.serviceData.value[i].name!,
                                  controller.serviceData.value[i].price!, () {
                                if (controller
                                            .serviceData.value[i].categoryId ==
                                        5 ||
                                    controller
                                            .serviceData.value[i].categoryId ==
                                        6 ||
                                    controller
                                            .serviceData.value[i].categoryId ==
                                        7) {
                                  Get.toNamed(Routes.ITEMDETAIL, arguments: {
                                    'service': controller.serviceData.value[i],
                                  });
                                } else {
                                  Get.toNamed(Routes.SERVICESELECT, arguments: {
                                    'service': controller.serviceData.value[i],
                                  });
                                }
                              }),
                          ],
                        ),
                ],
              )),
        ),
      ),
    );
  }

  Widget cardService(String image, String title, int price, Function() ontap) {
    return Material(
      color: AppColors.CF0F0F0,
      child: InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: ontap,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h),
          child: Container(
            height: 100.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: Colors.white,
            ),
            child: Container(
              padding: EdgeInsets.all(10.r),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.r),
                        child: Image.network(
                          image,
                          height: 70.h,
                          width: 70.w,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 260.w,
                            child: Text(
                              title,
                              style: h6.copyWith(
                                  fontSize: 16.sp,
                                  color: AppColors.C343434,
                                  fontWeight: FontWeights.medium),
                            ),
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Text(
                            'Giá từ ${NumberUtils.vnd(price.toDouble())}đ',
                            style: h6.copyWith(
                                fontSize: 20.sp,
                                color: AppColors.C929292,
                                fontWeight: FontWeights.bold),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
