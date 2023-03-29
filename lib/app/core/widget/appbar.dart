import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pets/app/core/values/app_colors.dart';
import 'package:pets/app/core/values/text_styles.dart';
import 'package:pets/app/modules/main/controller/main_controller.dart';

class AppBarButton extends StatelessWidget {
  const AppBarButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      leading: IconButton(
        icon: Icon(
          Icons.menu,
          color: AppColors.C656565,
        ),
        onPressed: () {},
      ),
      title: Column(
        children: [
          Text(
            'Địa chỉ của bạn',
            style: h1,
          ),
          Row(
            children: [
              Icon(
                Icons.location_pin,
                color: Color(0xffFF7A00),
              ),
              Text(
                'Long Thạnh Mỹ, Quận 9',
                style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20.sp,
                  color: Color(0xffFF7A00),
                )),
              ),
            ],
          )
        ],
      ),
      actions: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: InkWell(
            onTap: () {
              MainController mainController = Get.find<MainController>();
              mainController.changeTab(3);
            },
            child: CircleAvatar(
              radius: 20.r,
              backgroundImage: const AssetImage('assets/png/avatar.png'),
            ),
          ),
        ),
      ],
    );
  }
}
