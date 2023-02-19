import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pets/app/core/values/app_colors.dart';
import 'package:pets/app/core/values/font_weights.dart';
import 'package:pets/app/core/values/text_styles.dart';
import 'package:pets/app/modules/petadopt/controller/petadopt_controller.dart';
import 'package:pets/app/modules/serivce/widgets/circleCard.dart';
import 'package:pets/app/route/app_routes.dart';

class PetAdoptScreen extends GetView<PetAdoptController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
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
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(14.r)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.search_sharp,
                              color: Color(0xffACACAC),
                            ),
                            Text('Tìm kiếm thú cưng',
                                style: h5.copyWith(
                                    color: AppColors.CB4B4B4,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeights.medium)),
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
                        Obx(() => Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                for (int i = 0;
                                    i <
                                        (controller
                                                .animalTypeData.value.length -
                                            2);
                                    i++)
                                  CircleCard(
                                    text: controller
                                        .animalTypeData.value[i].name!,
                                    image: controller.animalTypeData.value[i]
                                            .urlImage!.isEmpty
                                        ? "https://i.pinimg.com/564x/e5/f6/c6/e5f6c6f4d5b26a91ab6ba89cef4702e1.jpg"
                                        : controller
                                            .animalTypeData.value[i].urlImage!,
                                    ontap: () {
                                      Get.toNamed(Routes.PETADOPTDETAIL,
                                          arguments: {
                                            'animalTypeId': controller
                                                .animalTypeData.value[i].id!,
                                            'animalTypeName': controller
                                                .animalTypeData.value[i].name!,
                                          });
                                    },
                                  ),
                              ],
                            )),
                        SizedBox(
                          height: 15.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            for (int i =
                                    (controller.animalTypeData.value.length -
                                        2);
                                i < controller.animalTypeData.value.length;
                                i++)
                              CircleCard(
                                text: controller.animalTypeData.value[i].name!,
                                image: controller.animalTypeData.value[i]
                                        .urlImage!.isEmpty
                                    ? "https://i.pinimg.com/564x/e5/f6/c6/e5f6c6f4d5b26a91ab6ba89cef4702e1.jpg"
                                    : controller
                                        .animalTypeData.value[i].urlImage!,
                                ontap: () {
                                  Get.toNamed(Routes.PETADOPTDETAIL,
                                      arguments: {
                                        'animalTypeId': controller
                                            .animalTypeData.value[i].id!,
                                        'animalTypeName': controller
                                            .animalTypeData.value[i].name!,
                                      });
                                },
                              ),
                          ],
                        ),
                      ],
                    )),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.h),
                child: Text("Thú cưng cần được bạn nhận nuôi nè",
                    style: h6.copyWith(
                        fontWeight: FontWeights.bold,
                        color: AppColors.C656565,
                        fontSize: 13.sp)),
              ),
              SizedBox(
                  height: 335.h,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: GridView.builder(
                      itemCount: controller.petOwnerData.value.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 20.w,
                          mainAxisSpacing: 20.h,
                          mainAxisExtent: 260.h),
                      itemBuilder: (context, index) {
                        return Material(
                          elevation: 5,
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.r),
                          child: InkWell(
                            onTap: () {
                              Get.toNamed(Routes.PETINFO, arguments: {
                                'petOwner':
                                    controller.petOwnerData.value[index],
                              });
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20.r),
                                        topRight: Radius.circular(20.r)),
                                    child: Image.network(
                                      controller
                                          .petOwnerData.value[index].urlImage!,
                                      fit: BoxFit.fill,
                                      height: 140.h,
                                      width: double.infinity,
                                    )),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 15.w, top: 10.h),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        controller.petOwnerData.value[index]
                                            .nickname!,
                                        style: GoogleFonts.roboto(
                                            textStyle: const TextStyle(
                                          color: Color(0xffFF7A00),
                                          fontWeight: FontWeight.bold,
                                        )),
                                      ),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      Text(
                                        "Tuổi: 16 tháng",
                                        style: GoogleFonts.roboto(
                                            textStyle: TextStyle(
                                          color: const Color(0xff535F60),
                                          fontSize: 13.sp,
                                        )),
                                      ),
                                      Text(
                                        controller.petOwnerData.value[index]
                                            .description!,
                                        style: GoogleFonts.roboto(
                                            textStyle: TextStyle(
                                          color: const Color(0xff535F60),
                                          fontSize: 13.sp,
                                        )),
                                      ),
                                      Text(
                                        "Liên hệ: ${controller.petOwnerData.value[index].contact}",
                                        style: GoogleFonts.roboto(
                                            textStyle: TextStyle(
                                          color: const Color(0xff535F60),
                                          fontSize: 13.sp,
                                        )),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  )),
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
              ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.r),
                      topRight: Radius.circular(20.r)),
                  child: Image.asset('assets/png/cat.png')),
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
