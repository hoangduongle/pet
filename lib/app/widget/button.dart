import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Button extends StatelessWidget {
  String text;
  double width;
  double height;
  double borderRadius;
  double fontSize;
  bool outLine;
  void Function()? ontap;

  Button({
    Key? key,
    required this.text,
    this.width = 368,
    this.height = 45,
    this.borderRadius = 15,
    this.fontSize = 18,
    required this.outLine,
    required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width.w,
      height: height.h,
      child: Container(
        padding: EdgeInsets.all(1.5.r),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius.r),
          color: const Color(0xffFF7A00),
        ),
        child: Material(
          color: outLine ? Colors.white : Colors.transparent,
          borderRadius: BorderRadius.circular(borderRadius.r),
          child: InkWell(
            onTap: ontap,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  text,
                  style: GoogleFonts.montserrat(textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: fontSize.sp, color: outLine ? const Color(0xffFF7A00) : Colors.white)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
