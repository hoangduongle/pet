import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pets/app/route/app_routes.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ShoppingScreen extends StatefulWidget {
  const ShoppingScreen({super.key});

  @override
  State<ShoppingScreen> createState() => _ShoppingScreenState();
}

class _ShoppingScreenState extends State<ShoppingScreen> {
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
            child: CircleAvatar(
              radius: 25.r,
              backgroundImage: const AssetImage('assets/png/avatar.png'),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Container(
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
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20.h),
                child: Material(
                  elevation: 0,
                  borderRadius: BorderRadius.circular(14.r),
                  child: InkWell(
                    onTap: () {
                      Get.toNamed(Routes.SEARCHSERVICE);
                    },
                    child: Container(
                      width: 367.w,
                      height: 35.h,
                      decoration: BoxDecoration(color: Color.fromARGB(255, 229, 229, 233), borderRadius: BorderRadius.circular(14.r)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.search_sharp,
                            color: Color(0xffACACAC),
                          ),
                          Text(
                            'Tìm thứ tốt nhất cho Boss nhà bạn',
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
              ),
            ),
            Center(
              child: Container(
                width: 400.w,
                // height: 2.h,
                child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: 6,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4, mainAxisSpacing: 10),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Material(
                          elevation: 5,
                          borderRadius: BorderRadius.circular(50.r),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(50.r),
                            onTap: () {},
                            child: Container(
                              width: 68.w,
                              height: 68.h,
                              decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5.h),
                          child: Container(
                            child: Text(
                              'Đồ dùng, phụ kiện',
                              maxLines: 2,
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 12.sp, color: Color(0xff808080), fontWeight: FontWeight.w400),
                            ),
                          ),
                        )
                      ],
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            paddingText('Ưu đãi nổi bật'),
            cardPet(),
            paddingText('Sản phẩm nổi bật'),
            cardPet(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4.r),
                child: Image.asset('assets/png/servicemap.png'),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            for (int i = 0; i <= 4; i++) cardFooter(),
            SizedBox(
              height: 40.h,
            ),
          ],
        ),
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

  Widget paddingText(String text) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w, bottom: 20.h),
      child: Text(
        text,
        style: GoogleFonts.inter(textStyle: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.sp)),
      ),
    );
  }

  Widget cardPet() {
    return SizedBox(
      height: 220.h,
      child: GridView.builder(
        itemCount: 3,
        scrollDirection: Axis.horizontal,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(left: 20.w),
            child: Material(
              child: InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () {},
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.r),
                      child: Image.asset(
                        'assets/png/cat.png',
                        width: 152.w,
                        height: 122.h,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 151.w,
                      child: Text(
                        'Giường cho mèo Light Blue Ottoman',
                        style: TextStyle(color: const Color(0xff343434), fontWeight: FontWeight.w500, fontSize: 14.sp),
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    SizedBox(
                      width: 151.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Giá 450.000đ',
                            style: TextStyle(color: const Color(0xffFF7A00), fontSize: 15.sp, fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 24.w,
                            height: 24.h,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(7.r), color: Color(0xffFF7A00)),
                            child: Center(
                              child: Icon(
                                Icons.shopping_cart_outlined,
                                size: 20.r,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget cardFooter() {
    return Padding(
      padding: EdgeInsets.only(left: 20.w, top: 20.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.r),
            child: Image.asset(
              'assets/png/petycarecenter.png',
              width: 85.w,
              height: 70.h,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Pety Care Center",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.sp),
                ),
                SizedBox(
                  height: 5.h,
                ),
                SizedBox(
                  width: 180.w,
                  child: Text(
                    "Tư vấn sức khoẻ Online, khám lâm sàng và chích ngừa tại nhà.",
                    style: TextStyle(fontSize: 10.sp),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Color(0xffFFE600),
                      size: 19.r,
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      '5.0',
                      style: TextStyle(color: Color(0xff2D2D2D), fontSize: 10.sp, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Text(
                      '(99)',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10.sp,
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
