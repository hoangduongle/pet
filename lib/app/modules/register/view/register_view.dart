import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pets/app/core/values/app_colors.dart';
import 'package:pets/app/core/values/font_weights.dart';
import 'package:pets/app/core/values/text_styles.dart';
import 'package:pets/app/core/widget/button.dart';
import 'package:pets/app/modules/register/controller/register_controller.dart';
import 'package:pets/app/modules/register/model/view_state.dart';
import 'package:pets/app/route/app_routes.dart';

class RegisterScreen extends GetView<RegisterController> {
  RegisterScreen({super.key});

  TextEditingController pwdController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Obx(() => Stack(
          children: [
            if (controller.state.value == ViewState.normal)
              _main()
            else if (controller.state.value == ViewState.registerSuccess)
              _registerSuccess()
          ],
        ));
  }

  Widget _registerSuccess() {
    return Scaffold(
      body: Container(
        color: AppColors.Cffffff,
        child: Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Column(
              children: [
                Expanded(
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Center(
                          child: Image.asset(
                            "assets/png/logo.png",
                          ),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Text(
                          'Tạo tài khoản thành công',
                          textAlign: TextAlign.center,
                          style: h5.copyWith(
                            fontWeight: FontWeights.bold,
                          ),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Text(
                          'Cảm ơn bạn đã đăng kí tài khoản Petini',
                          textAlign: TextAlign.center,
                          style: subtitle1.copyWith(
                            fontWeight: FontWeights.medium,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(
                      bottom: 20.h,
                    ),
                    child: Button(
                      text: 'Đăng nhập',
                      outLine: false,
                      ontap: () {
                        Get.toNamed(
                          Routes.LOGIN,
                          arguments: {
                            'phoneNumber': controller.phoneNumber,
                            'registerPassword': controller.password,
                          },
                        );
                      },
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _main() {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButton(color: Color(0xff868686)),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: controller.formKey,
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
                child: TextFormField(
                  validator: (value) {
                    if (value.toString().isEmpty) {
                      return 'Vui lòng nhập số điện thoại';
                    }
                    if (value.toString().length != 10) {
                      return 'Số điện thoại gồm 10 chữ số';
                    }
                    return null;
                  },
                  onSaved: (value) => controller.phoneNumber = value!,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: 'Số điện thoại',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.r))),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(25.r),
                child: TextFormField(
                  obscureText: true,
                  validator: (value) {
                    if (value.toString().length != 6) {
                      return 'nhập tối đa 6 chữ số';
                    }
                    return null;
                  },
                  controller: pwdController,
                  decoration: InputDecoration(
                      labelText: 'Mật khẩu',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.r))),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(25.r),
                child: TextFormField(
                  obscureText: true,
                  validator: (value) {
                    if (value != pwdController.text) {
                      return 'Mật khẩu không khớp';
                    }
                    if (value.toString().length != 6) {
                      return 'nhập tối đa 6 chữ số';
                    }
                    return null;
                  },
                  onSaved: (value) => controller.password = value!,
                  decoration: InputDecoration(
                      labelText: 'Xác nhận mật khẩu',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.r))),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Button(
                height: 55,
                text: 'Đăng ký',
                outLine: false,
                ontap: () {
                  controller.register();
                },
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
                        bottom:
                            BorderSide(color: AppColors.CC1BCBC, width: 1.w),
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
                        bottom:
                            BorderSide(color: AppColors.CC1BCBC, width: 1.w),
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
      ),
    );
  }
}
