import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchServiceScreen extends StatefulWidget {
  const SearchServiceScreen({super.key});

  @override
  State<SearchServiceScreen> createState() => _SearchServiceScreenState();
}

class _SearchServiceScreenState extends State<SearchServiceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2f2f2),
      appBar: AppBar(
        toolbarHeight: 115,
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.h),
                  child: Material(
                    elevation: 0,
                    borderRadius: BorderRadius.circular(14.r),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.only(left: 20.w),
                        width: 320.w,
                        height: 40.h,
                        decoration: BoxDecoration(color: Color(0xffD8D8D8), borderRadius: BorderRadius.circular(14.r)),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Tìm kiếm dịch vụ và phòng khám',
                            style: GoogleFonts.inter(
                                textStyle: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color(0xff707070),
                            )),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Text(
                    "Thoát",
                    style: GoogleFonts.inter(textStyle: TextStyle(fontSize: 18.sp, color: Color(0xffEA7509), fontWeight: FontWeight.bold)),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Material(
                  elevation: 0,
                  borderRadius: BorderRadius.circular(14.r),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 15.w),
                      height: 30.h,
                      decoration: BoxDecoration(color: Color(0xffCDCDCD), borderRadius: BorderRadius.circular(14.r)),
                      child: Center(
                        child: Text(
                          'Spa & Grooming',
                          style: GoogleFonts.inter(
                              textStyle: TextStyle(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff7B7B7B),
                          )),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Material(
                  elevation: 0,
                  borderRadius: BorderRadius.circular(14.r),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 15.w),
                      height: 30.h,
                      decoration: BoxDecoration(color: Color(0xffCDCDCD), borderRadius: BorderRadius.circular(14.r)),
                      child: Center(
                        child: Text(
                          'Mèo',
                          style: GoogleFonts.inter(
                              textStyle: TextStyle(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff7B7B7B),
                          )),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Material(
                  elevation: 0,
                  borderRadius: BorderRadius.circular(14.r),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 15.w),
                      height: 30.h,
                      decoration: BoxDecoration(color: Color(0xffCDCDCD), borderRadius: BorderRadius.circular(14.r)),
                      child: Center(
                        child: Text(
                          'Chó',
                          style: GoogleFonts.inter(
                              textStyle: TextStyle(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff7B7B7B),
                          )),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              cardService(),
              cardService(),
              cardService(),
              cardService(),
            ],
          ),
        ),
      ),
    );
  }

  Widget cardService() {
    return Material(
      child: InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () {
          Get.toNamed('servicedetail');
        },
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h),
          child: Container(
            height: 235.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: Colors.white,
            ),
            child: Container(
              padding: EdgeInsets.all(7.r),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.r),
                        child: Image.asset(
                          'assets/png/petycarecenter.png',
                          height: 64,
                          width: 64,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 3.h,
                          ),
                          Text(
                            'Pet Homies',
                            style: TextStyle(fontSize: 18.sp, color: Color(0xff343434), fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 18.sp,
                                color: Color(0xffFFE600),
                              ),
                              Text(
                                '5.0',
                                style: TextStyle(fontSize: 13.sp, color: Color(0xff2d2d2d), fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10.w),
                                child: Text(
                                  '(58)',
                                  style: TextStyle(fontSize: 13.sp, color: Color(0xff656565)),
                                ),
                              ),
                              Icon(
                                Icons.all_inbox,
                                size: 18.sp,
                                color: Color(0xff656565),
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text(
                                '10+',
                                style: TextStyle(fontSize: 13.sp, color: Color(0xff656565)),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.w),
                    child: Column(
                      children: [
                        detailCardService(),
                        detailCardService(),
                      ],
                    ),
                  ),
                  Container(
                    child: Text(
                      'Xem tất cả',
                      style: TextStyle(
                        color: Color(0xff969696),
                        fontSize: 12.sp,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget detailCardService() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.r),
            child: Image.asset(
              'assets/png/petycarecenter.png',
              height: 48,
              width: 48,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 5.h,
              ),
              Text(
                'Cạo lông cho mèo - Shave Cats hair',
                style: TextStyle(fontSize: 10.sp, color: Color(0xff343434), fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'Giá từ 400.000đ',
                style: TextStyle(fontSize: 10.sp, color: Color(0xff929292), fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
    );
  }
}
