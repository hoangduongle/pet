import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pets/app/modules/petadoptDetail/view/detail.dart';
import 'package:pets/app/modules/petowner/view/petowner_view.dart';

class PetAdoptDetailScreen extends StatefulWidget {
  const PetAdoptDetailScreen({super.key});

  @override
  State<PetAdoptDetailScreen> createState() => _PetAdoptDetailScreenState();
}

class _PetAdoptDetailScreenState extends State<PetAdoptDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Color(0xff868686),
            ),
          ),
          title: Text(
            "Mèo",
            style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.black, fontSize: 23.sp)),
          ),
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
          DetailAdopt(),
          PetOwnerScreen(),
        ]),
      ),
    );
  }
}
