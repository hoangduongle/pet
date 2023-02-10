import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pets/app/route/app_routes.dart';

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
          SizedBox(
            width: 368.w,
            height: 45,
            child: Material(
              color: const Color(0xffFF7A00),
              borderRadius: BorderRadius.circular(15.r),
              child: InkWell(
                onTap: () {
                  Get.toNamed(Routes.LOGIN);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Đăng nhập',
                      style: GoogleFonts.montserrat(textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp, color: Colors.white)),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          SizedBox(
            width: 368.w,
            height: 45.h,
            child: Container(
              padding: EdgeInsets.all(1.r),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                color: const Color(0xffFF7A00),
              ),
              child: Material(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.r),
                child: InkWell(
                  focusColor: const Color(0xffFF7A00),
                  onTap: () {
                    Get.toNamed(Routes.REGISTER);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Đăng ký',
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp, color: const Color(0xffFF7A00)),
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
