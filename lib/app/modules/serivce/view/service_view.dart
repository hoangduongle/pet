import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pets/app/core/values/app_colors.dart';
import 'package:pets/app/core/values/font_weights.dart';
import 'package:pets/app/core/values/text_styles.dart';
import 'package:pets/app/modules/serivce/widgets/BuildIndicator.dart';
import 'package:pets/app/modules/serivce/widgets/cardPet.dart';
import 'package:pets/app/modules/serivce/widgets/circleCard.dart';
import 'package:pets/app/modules/serivce/widgets/paddingText.dart';
import 'package:pets/app/route/app_routes.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../widgets/cardFooter.dart';

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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: AppColors.C656565,
          ),
          onPressed: () {},
        ),
        title: Column(
          children: [
            Text(
              'Địa chỉ của bạn',
              style: h5.copyWith(color: AppColors.CACACAC, fontSize: 14.sp),
            ),
            Row(
              children: [
                const Icon(
                  Icons.location_pin,
                  color: Color(0xffFF7A00),
                ),
                Text(
                  'Long Thạnh Mỹ, Quận 9',
                  style: h4.copyWith(color: AppColors.CFF7A00, fontSize: 20.sp, fontWeight: FontWeights.bold),
                ),
              ],
            )
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: CircleAvatar(
              radius: 20.r,
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
                  BuildIndicator(
                    length: 2,
                    currentIndex: currentIndex,
                  ),
                ])),
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20.h),
                child: Material(
                  elevation: 0,
                  borderRadius: BorderRadius.circular(10.r),
                  child: InkWell(
                    onTap: () {
                      Get.toNamed(Routes.SEARCHSERVICE, arguments: {
                        'searchText': '',
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 50.w),
                      width: 365.w,
                      height: 37.h,
                      decoration: BoxDecoration(color: AppColors.CF7F8FD, borderRadius: BorderRadius.circular(14.r)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Icon(
                            Icons.search_sharp,
                            color: Color(0xffACACAC),
                          ),
                          Text('Tìm kiếm dịch vụ và phòng khám', style: h5.copyWith(color: AppColors.CB4B4B4, fontSize: 15.sp, fontWeight: FontWeights.medium)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleCard(
                            text: "Spa & Grooming",
                            image: 'assets/png/cat.png',
                            ontap: () {
                              Get.toNamed(Routes.SEARCHSERVICE, arguments: {
                                'searchText': 'Spa & Grooming',
                              });
                            },
                          ),
                          CircleCard(
                            text: "Khám bệnh",
                            image: 'assets/png/cat.png',
                            ontap: () {
                              Get.toNamed(Routes.SEARCHSERVICE, arguments: {
                                'searchText': 'Khám bệnh',
                              });
                            },
                          ),
                          CircleCard(
                            text: "Phẫu thuật",
                            image: 'assets/png/cat.png',
                            ontap: () {
                              Get.toNamed(Routes.SEARCHSERVICE, arguments: {
                                'searchText': 'Phẫu thuật',
                              });
                            },
                          ),
                          CircleCard(
                            text: "Dịch vụ khác",
                            image: 'assets/png/cat.png',
                            ontap: () {
                              Get.toNamed(Routes.SEARCHSERVICE, arguments: {
                                'searchText': '',
                              });
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleCard(
                            text: "Tiêm phòng",
                            image: 'assets/png/cat.png',
                            ontap: () {
                              Get.toNamed(Routes.SEARCHSERVICE, arguments: {
                                'searchText': 'Tiêm phòng',
                              });
                            },
                          ),
                          CircleCard(
                            text: "Khách sạn",
                            image: 'assets/png/cat.png',
                            ontap: () {
                              Get.toNamed(Routes.SEARCHSERVICE, arguments: {
                                'searchText': 'Khách sạn',
                              });
                            },
                          ),
                          CircleCard(
                            text: "Ưu đãi",
                            image: 'assets/png/cat.png',
                            ontap: () {
                              Get.toNamed(Routes.SEARCHSERVICE, arguments: {
                                'searchText': '',
                              });
                            },
                          ),
                          CircleCard(
                            text: "Trợ giúp",
                            image: 'assets/png/cat.png',
                            ontap: () {
                              Get.toNamed(Routes.SEARCHSERVICE, arguments: {
                                'searchText': 'Trợ giúp',
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  )),
            ),
            SizedBox(
              height: 30.h,
            ),
            const PaddingText(text: 'Dịch vụ nổi bật'),
            cardPet('Tắm vệ sinh cắt tỉa trọn gói tại nhà', 'Pet Homies', 'assets/png/cat.png', 450000, 5),
            const PaddingText(text: 'Vaccine cần thiết cho thú cưng'),
            cardPet('Vaccine ngừa 4 bệnh truyền nhiễm', 'Pet Care Center', 'assets/png/cat.png', 450000, 4.9),
            const PaddingText(text: 'Dịch vụ tận nhà'),
            cardPet('Tắm & Xịt dưỡng cho chó (không vệ sinh)', 'Chuyên viên', 'assets/png/cat.png', 130000, 5),
            const PaddingText(text: 'Sen đi làm xa, có Hotel lo nha !'),
            cardPet('Day care', 'Pet Homies', 'assets/png/cat.png', 150000, 5),
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
            for (int i = 0; i <= 4; i++)
              Padding(
                padding: EdgeInsets.only(left: 20.w, top: 25.h),
                child: CardFooter(),
              ),
            SizedBox(
              height: 40.h,
            ),
          ],
        ),
      ),
    );
  }

  Widget cardPet(String textTitle, String subText, String image, double price, double rate) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      child: SizedBox(
        height: 220.h,
        child: GridView.builder(
          itemCount: 3,
          scrollDirection: Axis.horizontal,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 30.w,
            mainAxisExtent: 180.w,
            crossAxisCount: 1,
          ),
          itemBuilder: (context, index) {
            return CardPet(image: image, textTitle: textTitle, subText: subText, price: price, rate: rate);
          },
        ),
      ),
    );
  }
}
