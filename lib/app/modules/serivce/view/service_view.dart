import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pets/app/core/values/app_colors.dart';
import 'package:pets/app/core/values/font_weights.dart';
import 'package:pets/app/core/values/text_styles.dart';
import 'package:pets/app/modules/serivce/widgets/BuildIndicator.dart';
import 'package:pets/app/modules/serivce/widgets/cardPet.dart';
import 'package:pets/app/modules/serivce/widgets/circleCard.dart';
import 'package:pets/app/modules/serivce/widgets/paddingText.dart';
import 'package:pets/app/route/app_routes.dart';

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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(Routes.CART);
        },
        backgroundColor: Colors.white.withOpacity(0.8),
        elevation: 2,
        // ignore: prefer_const_constructors
        child: Icon(
          Icons.shopping_cart_checkout_rounded,
          color: Colors.black,
        ),
      ),
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
                  style: h4.copyWith(
                      color: AppColors.CFF7A00,
                      fontSize: 20.sp,
                      fontWeight: FontWeights.bold),
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
                      decoration: BoxDecoration(
                          color: AppColors.CF7F8FD,
                          borderRadius: BorderRadius.circular(14.r)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Icon(
                            Icons.search_sharp,
                            color: Color(0xffACACAC),
                          ),
                          Text('Tìm kiếm dịch vụ và phòng khám',
                              style: h5.copyWith(
                                  color: AppColors.CB4B4B4,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeights.medium)),
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
                            image:
                                'https://i.pinimg.com/564x/ea/f5/16/eaf516591c025c71960dac58ff4ba08c.jpg',
                            ontap: () {
                              Get.toNamed(Routes.SEARCHSERVICE, arguments: {
                                'searchText': 'Spa & Grooming',
                              });
                            },
                          ),
                          CircleCard(
                            text: "Khám bệnh",
                            image:
                                'https://i.pinimg.com/564x/e2/8c/56/e28c56ba8639bb827895fc3f3bef7517.jpg',
                            ontap: () {
                              Get.toNamed(Routes.SEARCHSERVICE, arguments: {
                                'searchText': 'Khám bệnh',
                              });
                            },
                          ),
                          CircleCard(
                            text: "Phẫu thuật",
                            image:
                                'https://i.pinimg.com/564x/e8/1b/f1/e81bf166e57c69e67ed4f8e95743c602.jpg',
                            ontap: () {
                              Get.toNamed(Routes.SEARCHSERVICE, arguments: {
                                'searchText': 'Phẫu thuật',
                              });
                            },
                          ),
                          CircleCard(
                            text: "Dịch vụ khác",
                            image:
                                'https://i.pinimg.com/564x/9a/7d/1d/9a7d1ddeb4e46703468032f120f6adf8.jpg',
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
                            image:
                                'https://i.pinimg.com/564x/9a/7d/1d/9a7d1ddeb4e46703468032f120f6adf8.jpg',
                            ontap: () {
                              Get.toNamed(Routes.SEARCHSERVICE, arguments: {
                                'searchText': 'Tiêm phòng',
                              });
                            },
                          ),
                          CircleCard(
                            text: "Khách sạn",
                            image:
                                'https://i.pinimg.com/564x/7d/c9/66/7dc9663c96aeb90cc1973278d3150598.jpg',
                            ontap: () {
                              Get.toNamed(Routes.SEARCHSERVICE, arguments: {
                                'searchText': 'Khách sạn',
                              });
                            },
                          ),
                          CircleCard(
                            text: "Ưu đãi",
                            image:
                                'https://i.pinimg.com/564x/79/09/1d/79091d317abcc24d8e58ab87eea9fcda.jpg',
                            ontap: () {
                              Get.toNamed(Routes.PROMOTION);
                            },
                          ),
                          CircleCard(
                            text: "Trợ giúp",
                            image:
                                'https://i.pinimg.com/564x/1c/d6/61/1cd6618121204aecb8a0ee7415790fff.jpg',
                            ontap: () {
                              Get.toNamed(Routes.SUPPORT);
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
            cardPet(
                'Combo cắt tỉa tại nhà',
                'Pet Homies',
                'https://i.pinimg.com/564x/8c/4b/ce/8c4bcef39f6f8b0de95cb6308c0054e8.jpg',
                450000,
                5),
            const PaddingText(text: 'Vaccine cần thiết cho thú cưng'),
            cardPet(
                'Tắm vệ sinh cắt tỉa trọn gói tại nhà',
                'Pet Care Center',
                'https://i.pinimg.com/564x/cf/e4/65/cfe4656c0c5bd3f33713fbc1da8eee75.jpg',
                450000,
                4.9),
            const PaddingText(text: 'Dịch vụ tận nhà'),
            cardPet(
                'Tắm vệ sinh cắt tỉa trọn gói tại nhà',
                'Chuyên viên',
                'https://i.pinimg.com/564x/09/df/7b/09df7b68c9024e204e29ba02505a71c8.jpg',
                130000,
                5),
            const PaddingText(text: 'Sen đi làm xa, có Hotel lo nha !'),
            cardPet(
                'Day care',
                'Pet Homies',
                'https://i.pinimg.com/564x/09/df/7b/09df7b68c9024e204e29ba02505a71c8.jpg',
                150000,
                5),
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
                child: const CardFooter(
                    image:
                        'https://i.pinimg.com/564x/3e/93/0e/3e930e44249e8cca0743cb1a13716824.jpg',
                    titleText: 'Pety Care Center',
                    subText:
                        'Tư vấn sức khoẻ Online, khám lâm sàng vàchích ngừa tại nhà.',
                    number: 58,
                    rate: 5),
              ),
            SizedBox(
              height: 40.h,
            ),
          ],
        ),
      ),
    );
  }

  Widget cardPet(String textTitle, String subText, String image, double price,
      double rate) {
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
            return CardPet(
                image: image,
                textTitle: textTitle,
                subText: subText,
                price: price,
                rate: rate);
          },
        ),
      ),
    );
  }
}
