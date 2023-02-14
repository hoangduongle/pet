import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pets/app/core/widget/button.dart';
import 'package:pets/app/modules/order/view/success_view.dart';
import 'package:pets/app/route/app_routes.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff7f7f7),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
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
          "Xác nhận đơn hàng",
          style: GoogleFonts.roboto(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 20.h, left: 25.w, right: 25.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Xác nhận đơn hàng",
              style: GoogleFonts.roboto(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25.sp),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 120.h,
              decoration: BoxDecoration(color: Colors.black87, borderRadius: BorderRadius.circular(8.r)),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Phí vận chuyển",
                  style: GoogleFonts.roboto(color: Colors.black, fontWeight: FontWeight.normal, fontSize: 18.sp),
                ),
                Text(
                  "đ32,000",
                  style: GoogleFonts.roboto(color: Colors.black, fontWeight: FontWeight.normal, fontSize: 18.sp),
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Container(
              height: 70.h,
              decoration: BoxDecoration(color: Colors.black87, borderRadius: BorderRadius.circular(8.r)),
            ),
            SizedBox(
              height: 30.h,
            ),
            Container(
              height: 150.h,
              decoration: BoxDecoration(color: Color(0xffD9D9D9), borderRadius: BorderRadius.circular(8.r)),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Giá tạm tính',
                          style: TextStyle(color: Color(0xff787878)),
                        ),
                        Text(
                          'đ365,000',
                          style: TextStyle(color: Color(0xff787878)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Phí vận chuyển',
                          style: TextStyle(color: Color(0xff787878)),
                        ),
                        Text(
                          'đ32,000',
                          style: TextStyle(color: Color(0xff787878)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 31.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Tổng',
                          style: TextStyle(color: Colors.black, fontSize: 25.sp, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'đ397,000',
                          style: TextStyle(color: Colors.black, fontSize: 25.sp, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 200.h,
            ),
            Button(
              text: 'Đặt hàng',
              outLine: false,
              ontap: () {
                Get.to(() => SuccessOther());
                Future.delayed(
                  Duration(seconds: 2),
                  () {
                    Get.toNamed(Routes.MAIN);
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
