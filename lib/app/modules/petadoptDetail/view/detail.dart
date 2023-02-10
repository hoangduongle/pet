import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pets/app/widget/button.dart';

class DetailAdopt extends StatefulWidget {
  const DetailAdopt({super.key});

  @override
  State<DetailAdopt> createState() => _DetailAdoptState();
}

const List<String> listType = <String>['Tam thể ', 'T', 'A', 'B'];
const List<String> listAge = <String>['1 tháng', '5 tháng', '10 tháng', '16 tháng'];

class _DetailAdoptState extends State<DetailAdopt> {
  @override
  Widget build(BuildContext context) {
    String dropdownValueType = listType.first;
    String dropdownValueAge = listAge.first;

    return Scaffold(
      body: Column(
        children: [
          Center(
              child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  child: Text(
                    "Bạn muốn nhận nuôi mèo ư ?",
                    style: TextStyle(color: Color(0xff292929), fontWeight: FontWeight.w500),
                  ))),
          Padding(
            padding: EdgeInsets.only(left: 15.w, right: 15.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Giống thú cưng",
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
            height: 20.h,
          ),
          Align(
            alignment: Alignment(0.9, 1),
            child: Button(
              width: 120,
              height: 35,
              borderRadius: 50,
              fontSize: 13,
              text: "Lọc",
              outLine: false,
              ontap: () {},
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: Text(
              "Các bé mèo đang đợi bạn nè :3",
              style: GoogleFonts.roboto(textStyle: TextStyle(fontWeight: FontWeight.w600, color: Color(0xff656565))),
            ),
          ),
          Expanded(
              child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: GridView.builder(
              itemCount: 6,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 20.w, mainAxisSpacing: 20.h, mainAxisExtent: 260.h),
              itemBuilder: (context, index) {
                return Material(
                  elevation: 5,
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.r),
                  child: InkWell(
                    onTap: () {},
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
          ))
        ],
      ),
    );
  }
}
