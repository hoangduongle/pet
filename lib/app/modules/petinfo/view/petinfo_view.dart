import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pets/app/widget/button.dart';

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
            color: Color(0xff868686),
          ),
        ),
        title: Text(
          "Mèo",
          style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 23.sp)),
        ),
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
                  style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w500),
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
                      style: TextStyle(fontSize: 13.sp, color: const Color(0xff7A7A7A)),
                    ),
                    Text(
                      'Tuổi : 16 tháng ',
                      style: TextStyle(fontSize: 13.sp, color: const Color(0xff7A7A7A)),
                    ),
                    Text(
                      'Chủ không còn khả năng nuôi ',
                      style: TextStyle(fontSize: 13.sp, color: const Color(0xff7A7A7A)),
                    ),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: TextStyle(color: const Color(0xff7A7A7A), fontSize: 13.sp),
                        children: const <TextSpan>[
                          TextSpan(text: 'Liên hệ: '),
                          TextSpan(text: '0325434343', style: TextStyle(color: Color(0xffD34E4E))),
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
                  style: TextStyle(color: Color(0xff292929), fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
                height: 140.h,
                decoration: BoxDecoration(color: Color.fromARGB(255, 229, 229, 229), borderRadius: BorderRadius.circular(14.r)),
                child: Text(
                  'Nhiều người chọn mèo xanh Anh làm thú cưng, vì giống mèo này là một trong những loài phổ biến nhất ở Nga. Đại diện của giống chó này rất thông minh, bình tĩnh và kiềm chế, chúng hoàn toàn chịu đựng được sự cô đơn. Cần xem xét chi tiết hơn về lịch sử, đặc điểm và tính cách của con mèo, các sắc thái của việc nuôi dưỡng và chăm sóc.',
                  style: TextStyle(fontSize: 14.sp, color: Color(0xff7A7A7A)),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: Text(
                  'Yêu cầu',
                  style: TextStyle(color: Color(0xff292929), fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
                height: 60.h,
                decoration: BoxDecoration(color: Color.fromARGB(255, 229, 229, 229), borderRadius: BorderRadius.circular(14.r)),
                child: Text(
                  'Yêu thương mèo, có trách nhiệm với thú cưng của mình. Đồng ý với các điều khoản nhận nuôi.',
                  style: TextStyle(fontSize: 14.sp, color: Color(0xff7A7A7A)),
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
