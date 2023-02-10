import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ServiceScreen extends StatefulWidget {
  const ServiceScreen({super.key});

  @override
  State<ServiceScreen> createState() => _ServiceScreenState();
}

class _ServiceScreenState extends State<ServiceScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            child: Icon(Icons.account_circle_rounded, size: 45.r, color: Colors.amber),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: Column(children: [
                Center(
                  child: CarouselSlider.builder(
                    options: CarouselOptions(
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                      enableInfiniteScroll: true,
                      autoPlayInterval: const Duration(milliseconds: 3500),
                      autoPlay: true,
                      viewportFraction: 1,
                    ),
                    itemCount: 2,
                    itemBuilder: (context, index, realIndex) {
                      return SizedBox(
                        height: 186.h,
                        child: Image.asset('assets/png/slider.png'),
                      );
                    },
                  ),
                ),
                buildIndicator(2, currentIndex),
              ])),
        ],
      ),
    );
  }

  Widget buildIndicator(int length, int currentIndex) {
    return AnimatedSmoothIndicator(
      curve: Curves.easeInOut,
      activeIndex: currentIndex,
      count: length,
      effect: SlideEffect(dotHeight: 15.h, dotWidth: 15.w, spacing: 20, dotColor: Colors.grey, activeDotColor: Color.fromARGB(255, 92, 92, 92)),
    );
  }
}
