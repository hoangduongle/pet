import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pets/app/route/app_routes.dart';
import 'package:pets/app/core/widget/button.dart';

import '../../../core/widget/SizedBoxWidget.dart';

class WellcomeScreen extends StatefulWidget {
  const WellcomeScreen({super.key});

  @override
  State<WellcomeScreen> createState() => _WellcomeScreenState();
}

class _WellcomeScreenState extends State<WellcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Image.asset(
            "assets/png/logo.png",
          ),
          Text(
            "Hello !",
            style: GoogleFonts.montserrat(
                textStyle: TextStyle(
              color: const Color(0xff535F60),
              fontSize: 48.r,
            )),
          ),
          SizedBox(
            width: 270.w,
            child: Text(
              "Great place for you to find and take care of your pet",
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                color: const Color(0xff535F60),
                fontSize: 16.r,
              )),
            ),
          ),
          SizedBox(
            height: 70.h,
          ),
          Button(
            text: 'Đăng nhập',
            outLine: false,
            ontap: () {
              Get.toNamed(Routes.LOGIN);
            },
          ),
          SizedBoxWidget(
            height: 30,
          ),
          Button(
            text: 'Đăng ký',
            outLine: true,
            ontap: () {
              Get.toNamed(Routes.REGISTER);
            },
          ),
        ],
      ),
    );
  }
}
