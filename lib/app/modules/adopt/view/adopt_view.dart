import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pets/app/modules/petadopt/view/petadopt_view.dart';
import 'package:pets/app/modules/petowner/view/petowner_view.dart';

class AdoptScreen extends StatefulWidget {
  const AdoptScreen({super.key});

  @override
  State<AdoptScreen> createState() => _AdoptScreenState();
}

class _AdoptScreenState extends State<AdoptScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
            leading: IconButton(
              icon: Icon(
                Icons.menu,
                color: Color(0xff656565),
              ),
              onPressed: () {},
            ),
            title: Column(
              children: [
                Text(
                  'Địa chỉ của bạn',
                  style: GoogleFonts.roboto(textStyle: TextStyle(color: Color(0xffACACAC), fontSize: 17.sp)),
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
                child: CircleAvatar(
                  radius: 25.r,
                  backgroundImage: const AssetImage('assets/png/avatar.png'),
                ),
              )
            ],
            bottom: TabBar(indicatorPadding: EdgeInsets.symmetric(horizontal: 15.w), labelPadding: EdgeInsets.only(bottom: 5.h), indicatorColor: Colors.black, tabs: [
              Text(
                'Nhận nuôi thú cưng',
                style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                  color: Colors.black,
                )),
              ),
              Text(
                'Tìm chủ thú cưng',
                style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                  color: Colors.black,
                )),
              )
            ]),
          ),
          body: TabBarView(children: [
            PetAdoptScreen(),
            PetOwnerScreen(),
          ]),
        ));
  }
}
