import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pets/app/core/values/app_colors.dart';
import 'package:pets/app/core/values/font_weights.dart';
import 'package:pets/app/core/values/text_styles.dart';
import 'package:pets/app/modules/serivce/widgets/circleCard.dart';
import 'package:pets/app/route/app_routes.dart';

class PetAdoptScreen extends StatefulWidget {
  const PetAdoptScreen({super.key});

  @override
  State<PetAdoptScreen> createState() => _PetAdoptScreenState();
}

class _PetAdoptScreenState extends State<PetAdoptScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.h),
                  child: Material(
                    elevation: 3,
                    borderRadius: BorderRadius.circular(14.r),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 50.w),
                        width: 367.w,
                        height: 40.h,
                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(14.r)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.search_sharp,
                              color: Color(0xffACACAC),
                            ),
                            Text('Tìm kiếm thú cưng', style: h5.copyWith(color: AppColors.CB4B4B4, fontSize: 15.sp, fontWeight: FontWeights.medium)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.w),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleCard(
                              text: "Mèo",
                              image: 'assets/png/cat.png',
                              ontap: () {
                                Get.toNamed(Routes.PETADOPTDETAIL, arguments: {
                                  'searchText': 'Spa & Grooming',
                                });
                              },
                            ),
                            CircleCard(
                              text: "Cún",
                              image: 'assets/png/cat.png',
                              ontap: () {
                                // Get.toNamed(Routes.SEARCHSERVICE, arguments: {
                                //   'searchText': 'Khám bệnh',
                                // });
                              },
                            ),
                            CircleCard(
                              text: "Thằn lằn",
                              image: 'assets/png/cat.png',
                              ontap: () {
                                // Get.toNamed(Routes.SEARCHSERVICE, arguments: {
                                //   'searchText': 'Phẫu thuật',
                                // });
                              },
                            ),
                            CircleCard(
                              text: "Rắn",
                              image: 'assets/png/cat.png',
                              ontap: () {
                                // Get.toNamed(Routes.SEARCHSERVICE, arguments: {
                                //   'searchText': '',
                                // });
                              },
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleCard(
                              text: "Chim cảnh",
                              image: 'assets/png/cat.png',
                              ontap: () {
                                // Get.toNamed(Routes.SEARCHSERVICE, arguments: {
                                //   'searchText': 'Tiêm phòng',
                                // });
                              },
                            ),
                            CircleCard(
                              text: "Thú cưng khác",
                              image: 'assets/png/cat.png',
                              ontap: () {
                                // Get.toNamed(Routes.SEARCHSERVICE, arguments: {
                                //   'searchText': 'Khách sạn',
                                // });
                              },
                            ),
                          ],
                        ),
                      ],
                    )),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.h),
                child: Text("Thú cưng cần được bạn nhận nuôi nè", style: h6.copyWith(fontWeight: FontWeights.bold, color: AppColors.C656565, fontSize: 13.sp)),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [card(), card()],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [card(), card()],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget card() {
    return SizedBox(
      width: 180.w,
      child: Material(
        elevation: 2,
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.r),
        child: InkWell(
          onTap: () {
            Get.toNamed(Routes.PETINFO);
          },
          child: Column(
            children: [
              ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(20.r), topRight: Radius.circular(20.r)), child: Image.asset('assets/png/cat.png')),
              Padding(
                padding: EdgeInsets.only(left: 15.w, top: 10.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Mèo Anh lông dài',
                        style: h5.copyWith(
                          color: AppColors.CFF7A00,
                          fontSize: 16.sp,
                          fontWeight: FontWeights.bold,
                        )),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text("Tuổi: 16 tháng",
                        style: h5.copyWith(
                          color: AppColors.C535F60,
                          fontSize: 13.sp,
                          fontWeight: FontWeights.regular,
                        )),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text("Chủ không còn khả năng nuôi",
                        maxLines: 2,
                        style: h5.copyWith(
                          color: AppColors.C535F60,
                          fontSize: 13.sp,
                          fontWeight: FontWeights.regular,
                        )),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text("Liên hệ: 0325434343",
                        style: h5.copyWith(
                          color: AppColors.C535F60,
                          fontSize: 13.sp,
                          fontWeight: FontWeights.regular,
                        )),
                    SizedBox(
                      height: 8.h,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
