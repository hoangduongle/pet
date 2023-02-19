import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pets/app/core/values/app_colors.dart';
import 'package:pets/app/core/values/font_weights.dart';

class LoginDialogWidget extends StatelessWidget {
  const LoginDialogWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  void showLoginErrorDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => Dialog(
        elevation: 2,
        backgroundColor: Colors.white,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
        child: SizedBox(
          width: 500.w,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20.h,
              ),
              Text(
                'Số điện thoại hoặc mật khẩu không đúng!!',
                style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeights.bold,
                    color: AppColors.C000000),
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                width: 100.w,
                height: 30.h,
                child: Material(
                  color: AppColors.CFF7A00,
                  borderRadius: BorderRadius.circular(10.r),
                  child: InkWell(
                    autofocus: true,
                    focusColor: AppColors.CFF7A00,
                    borderRadius: BorderRadius.circular(10.r),
                    onTap: () {
                      Get.back();
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Đóng',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15.sp,
                              color: AppColors.Cffffff),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
