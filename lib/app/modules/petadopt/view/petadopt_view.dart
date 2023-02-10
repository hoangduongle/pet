import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pets/app/route/app_routes.dart';

class PetAdoptScreen extends StatefulWidget {
  const PetAdoptScreen({super.key});

  @override
  State<PetAdoptScreen> createState() => _PetAdoptScreenState();
}

class _PetAdoptScreenState extends State<PetAdoptScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.h),
              child: Material(
                elevation: 3,
                borderRadius: BorderRadius.circular(14.r),
                child: Container(
                  width: 367.w,
                  height: 35.h,
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(14.r)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.search_sharp,
                        color: Color(0xffACACAC),
                      ),
                      Text(
                        'Tìm kiến thú cưng',
                        style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                          color: Color(0xffACACAC),
                        )),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.transparent,
              width: 370.w,
              height: 210.h,
              child: GridView.builder(
                itemCount: 6,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(50.r),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(50.r),
                          onTap: () {
                            Get.toNamed(Routes.PETADOPTDETAIL);
                          },
                          child: Container(
                            width: 68.w,
                            height: 68.h,
                            decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 5.h),
                        child: Text('Mèo'),
                      )
                    ],
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.w),
              child: Text(
                "Thú cưng cần được bạn nhận nuôi nè",
                style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xff656565),
                )),
              ),
            ),
            Container(
              color: Colors.white,
              width: 370.w,
              height: 359.h,
              child: GridView.builder(
                itemCount: 6,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 20.w, mainAxisSpacing: 20.h, mainAxisExtent: 260.h),
                itemBuilder: (context, index) {
                  return Material(
                    elevation: 5,
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.r),
                    child: InkWell(
                      onTap: () {
                        Get.toNamed(Routes.PETINFO);
                      },
                      child: Column(
                        children: [
                          ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(20.r), topRight: Radius.circular(20.r)), child: Image.asset('assets/png/cat.png')),
                          Padding(
                            padding: EdgeInsets.only(left: 15.w, top: 10.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Mèo Anh lông dài',
                                  style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                    color: Color(0xffFF7A00),
                                    fontWeight: FontWeight.bold,
                                  )),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  "Tuổi: 16 tháng",
                                  style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                    color: Color(0xff535F60),
                                    fontSize: 13.sp,
                                  )),
                                ),
                                Text(
                                  "Chủ không còn khả năng nuôi",
                                  style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                    color: Color(0xff535F60),
                                    fontSize: 13.sp,
                                  )),
                                ),
                                Text(
                                  "Liên hệ: 0325434343",
                                  style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                    color: Color(0xff535F60),
                                    fontSize: 13.sp,
                                  )),
                                ),
                                //
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
