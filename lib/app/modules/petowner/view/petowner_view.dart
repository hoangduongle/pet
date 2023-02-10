// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PetOwnerScreen extends StatefulWidget {
  const PetOwnerScreen({super.key});

  @override
  State<PetOwnerScreen> createState() => _PetOwnerScreenState();
}

const List<String> listType = <String>['Mèo', 'Cún', 'Rắn', 'Chim cảnh'];
const List<String> listAge = <String>['1 tháng', '5 tháng', '10 tháng', '16 tháng'];
const List<String> listCategory = <String>['Tam thể ', 'T', 'A', 'B'];

class _PetOwnerScreenState extends State<PetOwnerScreen> {
  String dropdownValueType = listType.first;
  String dropdownValueAge = listAge.first;
  String dropdownValueCategory = listCategory.first;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 10.h),
              child: Text(
                "Trước khi tìm chủ mới cho thú cưng, bạn vui lòng nhập một vài thông tin giúp mình nha :3",
                style: GoogleFonts.roboto(textStyle: TextStyle(color: Color(0xff9F9F9F))),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15.w, right: 15.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Loại thú cưng",
                        style: GoogleFonts.roboto(textStyle: TextStyle(fontWeight: FontWeight.w600, color: Color(0xff656565))),
                      ),
                      Container(
                        decoration: BoxDecoration(color: Color.fromARGB(255, 217, 217, 217), borderRadius: BorderRadius.circular(20.r)),
                        width: 130.w,
                        height: 35.h,
                        child: InputDecorator(
                          decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20.r))), contentPadding: EdgeInsets.symmetric(horizontal: 10.w)),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              style: TextStyle(color: Color(0xff656565), fontWeight: FontWeight.w500),
                              borderRadius: BorderRadius.circular(20.r),
                              value: dropdownValueType,
                              isDense: true,
                              isExpanded: true,
                              items: listType.map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (value) {
                                setState(() {
                                  dropdownValueType = value!;
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "Tuổi",
                        style: GoogleFonts.roboto(textStyle: TextStyle(fontWeight: FontWeight.w600, color: Color(0xff656565))),
                      ),
                      Container(
                        decoration: BoxDecoration(color: Color.fromARGB(255, 217, 217, 217), borderRadius: BorderRadius.circular(20.r)),
                        width: 110.w,
                        height: 35.h,
                        child: InputDecorator(
                          decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20.r))), contentPadding: EdgeInsets.symmetric(horizontal: 10.w)),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              style: TextStyle(color: Color(0xff656565), fontWeight: FontWeight.w500),
                              borderRadius: BorderRadius.circular(20.r),
                              value: dropdownValueAge,
                              isDense: true,
                              isExpanded: true,
                              items: listAge.map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (value) {
                                setState(() {
                                  dropdownValueAge = value!;
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.w),
                  child: Row(
                    children: [
                      Text(
                        "Giống thú cưng",
                        style: GoogleFonts.roboto(textStyle: TextStyle(fontWeight: FontWeight.w600, color: Color(0xff656565))),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Container(
                        decoration: BoxDecoration(color: Color.fromARGB(255, 217, 217, 217), borderRadius: BorderRadius.circular(20.r)),
                        width: 150.w,
                        height: 35.h,
                        child: InputDecorator(
                          decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20.r))), contentPadding: EdgeInsets.symmetric(horizontal: 10.w)),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              style: TextStyle(color: Color(0xff656565), fontWeight: FontWeight.w500),
                              borderRadius: BorderRadius.circular(20.r),
                              value: dropdownValueCategory,
                              isDense: true,
                              isExpanded: true,
                              items: listCategory.map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (value) {
                                setState(() {
                                  dropdownValueCategory = value!;
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 10.h),
              child: Text(
                "Tình trạng thú cưng",
                style: GoogleFonts.roboto(textStyle: TextStyle(fontWeight: FontWeight.w600, color: Color(0xff656565))),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
              child: TextField(
                maxLines: 2,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.r))),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.w, right: 15.w),
              child: Text(
                "Bệnh ( nếu có )",
                style: GoogleFonts.roboto(textStyle: TextStyle(fontWeight: FontWeight.w600, color: Color(0xff656565))),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
              child: TextField(
                maxLines: 2,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.r))),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.w, right: 15.w),
              child: Text(
                "Hình ảnh (bắt buộc )",
                style: GoogleFonts.roboto(textStyle: TextStyle(fontWeight: FontWeight.w600, color: Color(0xff656565))),
              ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
                child: Row(
                  children: [
                    Container(
                      width: 80.w,
                      height: 72.h,
                      decoration: BoxDecoration(color: Color(0xffD9D9D9), borderRadius: BorderRadius.circular(14.r)),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Container(
                      width: 80.w,
                      height: 72.h,
                      decoration: BoxDecoration(color: Color(0xffD9D9D9), borderRadius: BorderRadius.circular(14.r)),
                      child: Icon(
                        Icons.add,
                        size: 50.r,
                        color: Colors.white,
                      ),
                    ),
                  ],
                )),
            Padding(
              padding: EdgeInsets.only(left: 15.w, right: 15.w),
              child: Text(
                "Mong muốn",
                style: GoogleFonts.roboto(textStyle: TextStyle(fontWeight: FontWeight.w600, color: Color(0xff656565))),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
              child: TextField(
                maxLines: 2,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.r))),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.w, right: 15.w),
              child: Text(
                "Thông tin liên hệ",
                style: GoogleFonts.roboto(textStyle: TextStyle(fontWeight: FontWeight.w600, color: Color(0xff656565))),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 10.h),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Tên",
                          style: GoogleFonts.inder(textStyle: TextStyle(fontSize: 15.sp, color: Color(0xff656565), fontWeight: FontWeight.w400)),
                        ),
                        SizedBox(
                          width: 50.w,
                        ),
                        SizedBox(
                          width: 320.w,
                          height: 30.h,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(16.r))),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                        Text(
                          "SĐT",
                          style: GoogleFonts.inder(textStyle: TextStyle(fontSize: 15.sp, color: Color(0xff656565), fontWeight: FontWeight.w400)),
                        ),
                        SizedBox(
                          width: 46.w,
                        ),
                        SizedBox(
                          width: 320.w,
                          height: 30.h,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(16.r))),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                        Text(
                          "Địa chỉ",
                          style: GoogleFonts.inder(textStyle: TextStyle(fontSize: 15.sp, color: Color(0xff656565), fontWeight: FontWeight.w400)),
                        ),
                        SizedBox(
                          width: 24.w,
                        ),
                        SizedBox(
                          width: 320.w,
                          height: 30.h,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(16.r))),
                          ),
                        ),
                      ],
                    ),
                  ],
                )),
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 40.h),
                child: SizedBox(
                  width: 366.w,
                  height: 39,
                  child: Material(
                    color: const Color(0xffFF7A00),
                    borderRadius: BorderRadius.circular(15.r),
                    child: InkWell(
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Xác nhận',
                            style: GoogleFonts.montserrat(textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp, color: Colors.white)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
