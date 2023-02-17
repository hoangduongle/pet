import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pets/app/core/utils/number_utils.dart';
import 'package:pets/app/core/values/app_colors.dart';
import 'package:pets/app/core/values/font_weights.dart';
import 'package:pets/app/core/values/text_styles.dart';
import 'package:pets/app/core/widget/button.dart';
import 'package:pets/app/modules/serviceSelect/controller/serviceSelect_controller.dart';
import 'package:pets/app/modules/serviceSelect/widgets/RadioItem.dart';

import '../widgets/RadioBox.dart';

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
                Image.asset('assets/png/servicedetail.png'),
                SizedBox(
                  height: 30.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'SPA & GROOMING',
                        style: TextStyle(
                            color: AppColors.C737373,
                            fontWeight: FontWeights.bold,
                            fontSize: 12.sp),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        'Tắm cho pet tại nhà - full grooming',
                        style: TextStyle(
                            color: AppColors.C000000,
                            fontWeight: FontWeights.bold,
                            fontSize: 17.sp),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        'Bảng giá dịch vụ',
                        style: TextStyle(
                            color: AppColors.C000000,
                            fontWeight: FontWeights.bold,
                            fontSize: 15.sp),
                      ),
                      SizedBox(
                        height: 10.h,
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
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Mô tả',
                              style: h6.copyWith(fontSize: 15.sp),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 10.h),
                              child: Text(
                                "Dịch vụ tắm cắt Dogca :",
                                style: h6.copyWith(
                                    fontWeight: FontWeights.regular,
                                    fontSize: 13.sp),
                              ),
                            ),
                            Text(
                              '- Cắt tỉa, tạo hình',
                              style: h6.copyWith(
                                  fontWeight: FontWeights.regular,
                                  fontSize: 13.sp),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              '- Trọn  gói tắm, vệ tinh & dưỡng lông',
                              style: h6.copyWith(
                                  fontWeight: FontWeights.regular,
                                  fontSize: 13.sp),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 10.h),
                              child: Text(
                                "Lưu ý :",
                                style: h6.copyWith(
                                    fontWeight: FontWeights.regular,
                                    fontSize: 13.sp),
                              ),
                            ),
                            Text(
                              'Khi đến spa Dogca sẽ kiểm tra tình trạng rối lông của boss, nếu có lông rối Dogca sẽ tính thêm phụ thu gỡ rối theo tuỳ tình trạng.',
                              style: h6.copyWith(
                                  fontWeight: FontWeights.regular,
                                  fontSize: 13.sp),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 10.h),
                              child: Text(
                                'Xem thêm',
                                style: h6.copyWith(
                                    color: const Color(0xff5bd4fb),
                                    fontWeight: FontWeights.regular,
                                    fontSize: 13.sp),
                              ),
                            ),
                            for (int i = 0;
                                i < controller.boxModelData.value.length;
                                i++)
                              InkWell(
                                splashColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () {
                                  setState(() {
                                    controller
                                            .boxModelData.value[i].isSelected =
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
                            Button(
                              width: double.infinity,
                              text: 'Xác nhận',
                              outLine: false,
                              ontap: () {},
                            ),
                            SizedBox(
                              height: 40.h,
                            ),
                          ],
                        ),
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
