import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pets/app/route/app_routes.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController phoneNumberController = new TextEditingController();
  TextEditingController pwdController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButton(color: Color(0xff868686)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Image.asset(
                "assets/png/logo.png",
                height: 200.h,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(25.r),
              child: TextField(
                controller: phoneNumberController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Số điện thoại', border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.r))),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(25.r),
              child: TextField(
                obscureText: true,
                controller: pwdController,
                decoration: InputDecoration(labelText: 'Mật khẩu', border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.r))),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Quên mật khẩu',
                    style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                      decoration: TextDecoration.underline,
                      color: const Color(0xff535F60),
                      fontSize: 13.r,
                    )),
                  ),
                  Text(
                    'Không có tài khoản',
                    style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                      decoration: TextDecoration.underline,
                      color: const Color(0xff535F60),
                      fontSize: 13.r,
                    )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 120.h,
            ),
            SizedBox(
              width: 368.w,
              height: 45,
              child: Material(
                color: const Color(0xffFF7A00),
                borderRadius: BorderRadius.circular(15.r),
                child: InkWell(
                  onTap: () {
                    var phoneNumber = phoneNumberController.text;
                    var pwd = pwdController.text;
                    print('SDT:$phoneNumber PWD:$pwd');
                    Get.toNamed(Routes.ADOPT);
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 2.h),
                  width: 130.w,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Color(0xffC1BCBC), width: 1.w),
                    ),
                  ),
                ),
                Text(
                  'or',
                  style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                    color: const Color(0xff535F60),
                    fontWeight: FontWeight.w500,
                    fontSize: 16.r,
                  )),
                ),
                Container(
                  padding: EdgeInsets.only(top: 2.h),
                  width: 130.w,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Color(0xffC1BCBC), width: 1.w),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Center(
                child: Text(
              "Social Media Login",
              style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                color: const Color(0xff535F60),
                fontWeight: FontWeight.w500,
                fontSize: 16.r,
              )),
            )),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 100.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SvgPicture.asset('assets/svg/gmail.svg'),
                  SvgPicture.asset('assets/svg/facebook.svg'),
                  SvgPicture.asset('assets/svg/instagram.svg'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}