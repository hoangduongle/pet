import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:pets/app/core/utils/number_utils.dart';
import 'package:pets/app/core/values/app_colors.dart';
import 'package:pets/app/core/values/font_weights.dart';
import 'package:pets/app/core/values/text_styles.dart';
import 'package:pets/app/core/widget/button.dart';
import 'package:pets/app/modules/serviceSelect/controller/serviceSelect_controller.dart';
import 'package:pets/app/modules/serviceSelect/widgets/RadioItem.dart';

import '../widgets/RadioBox.dart';
import '../widgets/RadioPet.dart';

class ServiceSelectScreen extends StatefulWidget {
  const ServiceSelectScreen({super.key});

  @override
  State<ServiceSelectScreen> createState() => _ServiceSelectScreenState();
}

class _ServiceSelectScreenState extends State<ServiceSelectScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ServiceSelectController>(
      builder: (controller) {
        return Scaffold(
          extendBodyBehindAppBar: true,
          backgroundColor: AppColors.CFDFDFD,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: InkWell(
              onTap: () {
                Get.back();
              },
              child: Icon(
                Icons.arrow_back_ios,
                color: AppColors.C868686,
                size: 22.sp,
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  controller.serviceData.value!.urlImage!,
                  height: 400.h,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
                SizedBox(
                  height: 30.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        controller.CategoryName(
                            controller.serviceData.value!.categoryId!),
                        style: TextStyle(
                            color: AppColors.C737373,
                            fontWeight: FontWeights.bold,
                            fontSize: 12.sp),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        controller.serviceData.value!.name!,
                        style: TextStyle(
                            color: AppColors.C000000,
                            fontWeight: FontWeights.bold,
                            fontSize: 17.sp),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            controller.serviceData.value!.description!,
                            style: h6.copyWith(
                                fontWeight: FontWeights.regular,
                                fontSize: 13.sp),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            'Loại thú cưng',
                            style: TextStyle(
                                color: AppColors.C000000,
                                fontWeight: FontWeights.medium,
                                fontSize: 15.sp),
                          ),
                          SizedBox(
                              height: 90.h,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: controller.typePet.value.length,
                                itemBuilder: (context, index) {
                                  return InkWell(
                                    splashColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () {
                                      setState(() {
                                        for (var element
                                            in controller.typePet.value) {
                                          element.isSelected = false;
                                        }
                                        controller.typePet.value[index]
                                            .isSelected = true;
                                      });
                                    },
                                    child: RadioPet(
                                        controller.typePet.value[index]),
                                  );
                                },
                              )),
                          Text(
                            'Kích cỡ',
                            style: TextStyle(
                                color: AppColors.C000000,
                                fontWeight: FontWeights.medium,
                                fontSize: 15.sp),
                          ),
                          SizedBox(
                              height: 90.h,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: controller.sampleData.value.length,
                                itemBuilder: (context, index) {
                                  return InkWell(
                                    splashColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () {
                                      setState(() {
                                        for (var element
                                            in controller.sampleData.value) {
                                          element.isSelected = false;
                                        }
                                        controller.sampleData.value[index]
                                            .isSelected = true;
                                      });
                                    },
                                    child: RadioItem(
                                        controller.sampleData.value[index]),
                                  );
                                },
                              )),
                          Text(
                            'Thời gian',
                            style: TextStyle(
                                color: AppColors.C000000,
                                fontWeight: FontWeights.medium,
                                fontSize: 15.sp),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.h),
                            child: Container(
                              height: 50.h,
                              width: double.infinity,
                              padding: EdgeInsets.all(1.r),
                              decoration: BoxDecoration(
                                  color:
                                      const Color(0xff343434).withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(10.r)),
                              child: Material(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.r),
                                elevation: 0,
                                child: InkWell(
                                  onTap: () {
                                    DatePicker.showDateTimePicker(context,
                                        showTitleActions: true,
                                        minTime: DateTime.now(),
                                        maxTime: DateTime(2023, 12, 31),
                                        onConfirm: (date) {
                                      var formatter =
                                          DateFormat('hh:mm dd/MM/yyyy');
                                      String formattedDate =
                                          formatter.format(date);
                                      controller.date.value = formattedDate;
                                    },
                                        currentTime: DateTime.now(),
                                        locale: LocaleType.vi);
                                  },
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.w),
                                      child: Obx(() => Text(
                                            controller.date.value,
                                            style: h5.copyWith(
                                                color: const Color(0xff343434),
                                                fontWeight: FontWeights.bold,
                                                fontSize: 20.sp),
                                          )),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            'Thêm',
                            style: TextStyle(
                                color: AppColors.C000000,
                                fontWeight: FontWeights.medium,
                                fontSize: 15.sp),
                          ),
                          for (int i = 0;
                              i < controller.boxModelData.value.length;
                              i++)
                            InkWell(
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () {
                                setState(() {
                                  controller.boxModelData.value[i].isSelected =
                                      !controller
                                          .boxModelData.value[i].isSelected;
                                });
                              },
                              child: RadioBoxItem(
                                  controller.boxModelData.value[i]),
                            ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Container(
                            margin: EdgeInsetsDirectional.only(
                                start: 1.r, end: 1.r),
                            height: 1.0,
                            color: Colors.grey.withOpacity(0.8.r),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Tổng tiền',
                                style: TextStyle(
                                    color: const Color(0xff676767),
                                    fontWeight: FontWeights.bold,
                                    fontSize: 20.sp),
                              ),
                              Obx(() => Text(
                                    'đ${NumberUtils.vnd(controller.getTotal)}',
                                    style: TextStyle(
                                        color: AppColors.CFF7A00,
                                        fontWeight: FontWeights.medium,
                                        fontSize: 20.sp),
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: 80.h,
                          ),
                          Button(
                            width: double.infinity,
                            text: 'Thêm vào giỏ hàng',
                            outLine: false,
                            ontap: () {
                              controller.addToCart();
                            },
                          ),
                          SizedBox(
                            height: 40.h,
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Widget radiobox(bool value, String text, Function(bool?) onChanged) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Checkbox(
            activeColor: AppColors.CFF7A00,
            value: value,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.r)),
            onChanged: onChanged),
        Text(
          text,
          style: h5.copyWith(color: AppColors.C595959, fontSize: 15.sp),
        )
      ],
    );
  }
}
