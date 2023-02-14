import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pets/app/core/values/font_weights.dart';
import 'package:pets/app/core/values/text_styles.dart';

class NavButton extends StatelessWidget {
  const NavButton({
    Key? key,
    required this.title,
    required this.icon,
    required this.iconOutlined,
    required this.onPressed,
    required this.state,
  }) : super(key: key);

  final Function() onPressed;
  final String title;
  final IconData icon;
  final IconData iconOutlined;
  final bool state;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 65.w,
      child: TextButton(
        onPressed: onPressed,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 24.r,
              width: 24.r,
              child: FittedBox(
                fit: BoxFit.fill,
                child: Icon(
                  state ? icon : iconOutlined,
                  size: 26.r,
                  color: state ? Color(0xffFF7A00) : Color(0xff2D2D2D),
                ),
              ),
            ),
            SizedBox(height: 4.h,),
            Text(
              title,
              style: state ? overline.copyWith(fontWeight: FontWeights.medium, color: Color(0xffFF7A00)) : overline.copyWith(color: Color(0xff2D2D2D)),
            ),
          ],
        ),
      ),
    );
  }
}
