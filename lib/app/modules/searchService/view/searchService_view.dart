import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pets/app/core/values/app_colors.dart';
import 'package:pets/app/core/values/font_weights.dart';
import 'package:pets/app/core/values/text_styles.dart';
import 'package:pets/app/modules/searchService/widgets/searchFast.dart';

class SearchServiceScreen extends StatefulWidget {
  const SearchServiceScreen({super.key});

  @override
  State<SearchServiceScreen> createState() => _SearchServiceScreenState();
}

TextEditingController searchTextController = new TextEditingController();

class _SearchServiceScreenState extends State<SearchServiceScreen> {
  @override
  Widget build(BuildContext context) {
    // searchTextController.text = Get.arguments['searchText'];
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
                      controller: searchTextController,
                      cursorColor: AppColors.C707070,
                      autofocus: true,
                      onChanged: (value) {
                        debugPrint(value);
                      },
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
                          focusedBorder: OutlineInputBorder(borderSide: const BorderSide(color: AppColors.CD8D8D8), borderRadius: BorderRadius.circular(10.r)),
                          enabledBorder: OutlineInputBorder(borderSide: const BorderSide(color: AppColors.CD8D8D8), borderRadius: BorderRadius.circular(10.r)),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.r)),
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
                    style: h6.copyWith(fontSize: 19.sp, color: AppColors.CEA7509, fontWeight: FontWeights.bold),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SearchFast(
                  text: 'Spa & Grooming',
                  ontap: () {
                    searchTextController.text = 'Spa & Grooming';
                  },
                ),
                SizedBox(
                  width: 10.w,
                ),
                SearchFast(
                  text: 'Mèo',
                  ontap: () {
                    searchTextController.text = 'Mèo';
                  },
                ),
                SizedBox(
                  width: 10.w,
                ),
                SearchFast(
                  text: 'Chó',
                  ontap: () {
                    searchTextController.text = 'Chó';
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
          child: Column(
            children: [
              cardService(),
              cardService(),
              cardService(),
              cardService(),
            ],
          ),
        ),
      ),
    );
  }

  Widget cardService() {
    return Material(
      color: AppColors.CF0F0F0,
      child: InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () {
          Get.toNamed('servicedetail');
        },
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h),
          child: Container(
            height: 235.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: Colors.white,
            ),
            child: Container(
              padding: EdgeInsets.all(7.r),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.r),
                        child: Image.asset(
                          'assets/png/petycarecenter.png',
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
                          Text('Pet Homies', style: h6.copyWith(color: AppColors.C343434, fontSize: 17.sp, fontWeight: FontWeights.bold)),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 20.sp,
                                color: AppColors.CFFE600,
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text('5.0', style: h6.copyWith(color: AppColors.C2D2D2D, fontSize: 15.sp, fontWeight: FontWeights.bold)),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10.w),
                                child: Text('(58)', style: h6.copyWith(color: AppColors.C656565, fontSize: 13.sp, fontWeight: FontWeights.regular)),
                              ),
                              Icon(
                                Icons.all_inbox,
                                size: 18.sp,
                                color: AppColors.C656565,
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text(
                                '10+',
                                style: h6.copyWith(color: AppColors.C656565, fontSize: 13.sp, fontWeight: FontWeights.regular),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.w),
                    child: Column(
                      children: [
                        detailCardService(),
                        detailCardService(),
                      ],
                    ),
                  ),
                  Text(
                    'Xem tất cả',
                    style: h6.copyWith(color: AppColors.C969696, fontSize: 13.sp, fontWeight: FontWeights.medium),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget detailCardService() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.r),
            child: Image.asset(
              'assets/png/petycarecenter.png',
              height: 50.h,
              width: 50.w,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Cạo lông cho mèo - Shave Cats hair',
                style: h6.copyWith(fontSize: 12.sp, color: AppColors.C343434, fontWeight: FontWeights.medium),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'Giá từ 400.000đ',
                style: h6.copyWith(fontSize: 10.sp, color: AppColors.C929292, fontWeight: FontWeights.regular),
              ),
            ],
          )
        ],
      ),
    );
  }
}
