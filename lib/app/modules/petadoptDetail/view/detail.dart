import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pets/app/core/values/font_weights.dart';
import 'package:pets/app/core/widget/button.dart';
import 'package:pets/app/modules/petadoptDetail/controller/petadoptDetail_controller.dart';
import 'package:pets/app/route/app_routes.dart';

import '../../../core/values/app_colors.dart';
import '../../../core/values/text_styles.dart';

const List<String> listType = <String>['Tam thể ', 'T', 'A', 'B'];
const List<String> listAge = <String>[
  '1 tháng',
  '5 tháng',
  '10 tháng',
  '16 tháng'
];

class DetailAdopt extends GetView<PetAdoptDetailController> {
  @override
  Widget build(BuildContext context) {
    controller.onInit();
    String dropdownValueType = listType.first;
    String dropdownValueAge = listAge.first;

    return Scaffold(
      body: Column(
        children: [
          Center(
              child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  child: Text(
                    "Bạn muốn nhận nuôi ${controller.animalTypeName} ư ?",
                    style: h6.copyWith(
                        color: AppColors.C000000,
                        fontSize: 16.sp,
                        fontWeight: FontWeights.medium),
                  ))),
          Padding(
            padding: EdgeInsets.only(left: 15.w, right: 15.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Giống thú cưng",
                    style:
                        h6.copyWith(color: AppColors.C656565, fontSize: 15.sp)),
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.Cffffff,
                      borderRadius: BorderRadius.circular(20.r)),
                  width: 130.w,
                  height: 35.h,
                  child: InputDecorator(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.r))),
                        contentPadding: EdgeInsets.symmetric(horizontal: 10.w)),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        style: h5.copyWith(
                            fontSize: 15.sp,
                            color: AppColors.C656565,
                            fontWeight: FontWeights.medium),
                        borderRadius: BorderRadius.circular(20.r),
                        value: dropdownValueType,
                        isDense: true,
                        isExpanded: true,
                        items: listType
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (value) {
                          debugPrint(value);
                          dropdownValueType = value!;
                        },
                      ),
                    ),
                  ),
                ),
                Text(
                  "Tuổi",
                  style: h6.copyWith(color: AppColors.C656565, fontSize: 15.sp),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.Cffffff,
                      borderRadius: BorderRadius.circular(20.r)),
                  width: 110.w,
                  height: 35.h,
                  child: InputDecorator(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.r))),
                        contentPadding: EdgeInsets.symmetric(horizontal: 10.w)),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        style: h5.copyWith(
                            fontSize: 15.sp,
                            color: AppColors.C656565,
                            fontWeight: FontWeights.medium),
                        borderRadius: BorderRadius.circular(20.r),
                        value: dropdownValueAge,
                        isDense: true,
                        isExpanded: true,
                        items: listAge
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (value) {
                          dropdownValueAge = value!;
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Align(
            alignment: const Alignment(0.9, 1),
            child: Button(
              width: 120.w,
              height: 35.h,
              borderRadius: 50.r,
              fontSize: 13.sp,
              text: "Lọc",
              outLine: false,
              ontap: () {},
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: Text(
              "Các bé ${controller.animalTypeName == 'Chó' ? 'Cún' : controller.animalTypeName} đang đợi bạn nè :3",
              style: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                      fontWeight: FontWeight.w600, color: Color(0xff656565))),
            ),
          ),
          Obx(() => Expanded(
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
                            'petOwner': controller.petOwnerData.value[index],
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
                              padding: EdgeInsets.only(left: 15.w, top: 10.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    controller
                                        .petOwnerData.value[index].nickname!,
                                    style: GoogleFonts.roboto(
                                        textStyle: const TextStyle(
                                      color: Color(0xffFF7A00),
                                      fontWeight: FontWeight.bold,
                                    )),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Text(
                                    "Tuổi: 16 tháng",
                                    style: GoogleFonts.roboto(
                                        textStyle: TextStyle(
                                      color: const Color(0xff535F60),
                                      fontSize: 13.sp,
                                    )),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Text(
                                    controller
                                        .petOwnerData.value[index].description!,
                                    style: GoogleFonts.roboto(
                                        textStyle: TextStyle(
                                      color: const Color(0xff535F60),
                                      fontSize: 13.sp,
                                    )),
                                  ),
                                  SizedBox(
                                    height: 5.h,
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
              ))),
        ],
      ),
    );
  }
}
