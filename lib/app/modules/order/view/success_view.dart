import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SuccessOther extends StatelessWidget {
  const SuccessOther({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffECECEC),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              child: Icon(
                Icons.check_circle,
                size: 200.sp,
                color: Color(0xffFF7A00),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Thank you !",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 50.sp,
                color: Color(0xffFF7A00),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Bạn đã tạo đơn thành công",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.sp,
                color: Color(0xffFF7A00),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
