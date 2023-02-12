import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ServiceDetailScreen extends StatefulWidget {
  const ServiceDetailScreen({super.key});

  @override
  State<ServiceDetailScreen> createState() => _ServiceDetailScreenState();
}

class _ServiceDetailScreenState extends State<ServiceDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffdfdfd),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/png/servicedetail.png'),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.check_circle_rounded,
                        color: Color(0xffFF7A00),
                        size: 40.sp,
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        'Đã xác thực',
                        style: TextStyle(color: Color(0xffFF7A00), fontWeight: FontWeight.bold, fontSize: 25.sp),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 8.h),
                    height: 34.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.r),
                      color: Color(0xfffffade),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 20.sp,
                          color: Colors.yellow,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          '4.9',
                          style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xff2D2D2D)),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
                    height: 34.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.r),
                      color: Color(0xffffd0d0),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 20.sp,
                          color: Color(0xffe78a00),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          '10+',
                          style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xff2D2D2D)),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25.w),
              child: Container(
                child: Text(
                  'Petini Care',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 25.w),
              width: 320.w,
              child: Text(
                'Pet Hour / Day care & Month care - Home care service Pet Playground & Pet Bathing - Hotel',
                style: TextStyle(color: Color(0xff838383), fontSize: 14.sp),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 20.h),
              child: Container(
                height: 140.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  color: Color.fromARGB(255, 220, 220, 220),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '4.9',
                        style: TextStyle(fontSize: 30.sp, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        '35 đánh giá',
                        style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold, color: Color(0xff8E8E8E)),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      for (int i = 0; i < 5; i++)
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                    ],
                  ),
                ],
              ),
            ),
            for (int i = 0; i < 5; i++) cardFooter(),
            SizedBox(
              height: 60.h,
            ),
          ],
        ),
      ),
    );
  }

  Widget cardFooter() {
    return Padding(
      padding: EdgeInsets.only(left: 20.w, top: 20.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.r),
            child: Image.asset(
              'assets/png/petycarecenter.png',
              width: 85.w,
              height: 70.h,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Pety Care Center",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.sp),
                ),
                SizedBox(
                  height: 5.h,
                ),
                SizedBox(
                  width: 180.w,
                  child: Text(
                    "Tư vấn sức khoẻ Online, khám lâm sàng và chích ngừa tại nhà.",
                    style: TextStyle(fontSize: 10.sp),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Color(0xffFFE600),
                      size: 19.r,
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      '5.0',
                      style: TextStyle(color: Color(0xff2D2D2D), fontSize: 10.sp, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Text(
                      '(99)',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10.sp,
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
