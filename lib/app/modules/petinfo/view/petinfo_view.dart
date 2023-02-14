import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pets/app/core/values/app_colors.dart';
import 'package:pets/app/core/values/font_weights.dart';
import 'package:pets/app/core/values/text_styles.dart';
import 'package:pets/app/core/widget/button.dart';

class PetInfoScreen extends StatefulWidget {
  const PetInfoScreen({super.key});

  @override
  State<PetInfoScreen> createState() => _PetInfoScreenState();
}

class _PetInfoScreenState extends State<PetInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
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
        title: Text("Mèo", style: h6.copyWith(color: AppColors.C000000, fontSize: 23.sp)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Image.asset('assets/png/infoCat.png'),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: Text(
                  "Mèo Anh lông dài",
                  style: h6.copyWith(fontSize: 24.sp, fontWeight: FontWeights.medium),
                ),
              ),
              SizedBox(
                height: 80.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Ngày sinh : 20-10-2021',
                      style: TextStyle(fontSize: 13.sp, color: AppColors.C7A7A7A),
                    ),
                    Text(
                      'Tuổi : 16 tháng ',
                      style: TextStyle(fontSize: 13.sp, color: AppColors.C7A7A7A),
                    ),
                    Text(
                      'Chủ không còn khả năng nuôi ',
                      style: TextStyle(fontSize: 13.sp, color: AppColors.C7A7A7A),
                    ),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: TextStyle(fontSize: 13.sp, color: AppColors.C7A7A7A),
                        children: const <TextSpan>[
                          TextSpan(text: 'Liên hệ: '),
                          TextSpan(text: '0325434343', style: TextStyle(color: AppColors.CD34E4E)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: Text(
                  'Mô tả',
                  style: h6.copyWith(fontSize: 16.sp, color: AppColors.C292929, fontWeight: FontWeights.medium),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
                height: 140.h,
                decoration: BoxDecoration(color: AppColors.Cf4f4f4, borderRadius: BorderRadius.circular(14.r)),
                child: Text(
                  'Nhiều người chọn mèo xanh Anh làm thú cưng, vì giống mèo này là một trong những loài phổ biến nhất ở Nga. Đại diện của giống chó này rất thông minh, bình tĩnh và kiềm chế, chúng hoàn toàn chịu đựng được sự cô đơn. Cần xem xét chi tiết hơn về lịch sử, đặc điểm và tính cách của con mèo, các sắc thái của việc nuôi dưỡng và chăm sóc.',
                  style: h6.copyWith(fontSize: 14.sp, color: AppColors.C7A7A7A),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: Text(
                  'Yêu cầu',
                  style: h6.copyWith(fontSize: 16.sp, color: AppColors.C292929, fontWeight: FontWeights.medium),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
                height: 60.h,
                decoration: BoxDecoration(color: AppColors.Cf4f4f4, borderRadius: BorderRadius.circular(14.r)),
                child: Text(
                  'Yêu thương mèo, có trách nhiệm với thú cưng của mình. Đồng ý với các điều khoản nhận nuôi.',
                  style: h6.copyWith(fontSize: 14.sp, color: AppColors.C7A7A7A),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 40.h),
                  child: Button(
                    text: 'Liên hệ ngay',
                    outLine: false,
                    ontap: () {},
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
