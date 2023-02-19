import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pets/app/core/model/service.dart';
import 'package:pets/app/core/values/app_colors.dart';
import 'package:pets/app/core/values/font_weights.dart';
import 'package:pets/app/core/values/text_styles.dart';
import 'package:pets/app/modules/serivce/controller/service_controller.dart';
import 'package:pets/app/modules/serivce/widgets/BuildIndicator.dart';
import 'package:pets/app/modules/serivce/widgets/cardPet.dart';
import 'package:pets/app/modules/serivce/widgets/circleCard.dart';
import 'package:pets/app/modules/serivce/widgets/paddingText.dart';
import 'package:pets/app/route/app_routes.dart';

import '../widgets/cardFooter.dart';

class ServiceScreen extends GetView<ServiceController> {
  int currentIndex = 0;

  ServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(Routes.CART);
        },
        backgroundColor: const Color(0xffFF7A00),
        elevation: 2,
        // ignore: prefer_const_constructors
        child: Icon(
          Icons.shopping_cart_checkout_rounded,
          color: Colors.white,
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: Container(),
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
                          controller.currentIndex.value = index;
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
                  Obx(() => BuildIndicator(
                        length: 2,
                        currentIndex: controller.currentIndex.value,
                      )),
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
                        'searchCateId': '',
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
                      Obx(() => Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              for (int i = 0;
                                  i < controller.cateData.value.length;
                                  i++)
                                CircleCard(
                                  text: controller.cateData.value[i].name!,
                                  image: controller.cateData.value[i].urlImage!,
                                  ontap: () {
                                    Get.toNamed(Routes.SEARCHSERVICE,
                                        arguments: {
                                          'searchText': controller
                                              .cateData.value[i].name!,
                                          'searchCateId':
                                              controller.cateData.value[i].id!,
                                        });
                                  },
                                ),
                            ],
                          )),
                      // SizedBox(
                      //   height: 15.h,
                      // ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   children: [
                      //     CircleCard(
                      //       text: "Khám bệnh",
                      //       image:
                      //           'https://i.pinimg.com/564x/9a/7d/1d/9a7d1ddeb4e46703468032f120f6adf8.jpg',
                      //       ontap: () {
                      //         Get.toNamed(Routes.SEARCHSERVICE, arguments: {
                      //           'searchText': 'Khám bệnh',
                      //           'searchCateId': '',
                      //         });
                      //       },
                      //     ),
                      //     CircleCard(
                      //       text: "Dịch vụ khác",
                      //       image:
                      //           'https://i.pinimg.com/564x/7d/c9/66/7dc9663c96aeb90cc1973278d3150598.jpg',
                      //       ontap: () {
                      //         Get.toNamed(Routes.SEARCHSERVICE, arguments: {
                      //           'searchText': '',
                      //           'searchCateId': '',
                      //         });
                      //       },
                      //     ),
                      //     CircleCard(
                      //       text: "Ưu đãi",
                      //       image:
                      //           'https://i.pinimg.com/564x/79/09/1d/79091d317abcc24d8e58ab87eea9fcda.jpg',
                      //       ontap: () {
                      //         Get.toNamed(Routes.PROMOTION);
                      //       },
                      //     ),
                      //   ],
                      // ),
                    ],
                  )),
            ),
            SizedBox(
              height: 30.h,
            ),
            const PaddingText(text: 'Dịch vụ nổi bật'),
            Obx(() => cardPet(controller.serviceDataSpecial)),
            const PaddingText(text: 'Huấn luyện thú cưng'),
            Obx(() => cardPet(controller.serviceCate2)),
            const PaddingText(text: 'Vaccine cần thiết cho thú cưng'),
            Obx(() => cardPet(controller.serviceCate3)),
            const PaddingText(text: 'Sen đi làm xa, có Hotel lo nha !'),
            Obx(() => cardPet(controller.serviceCate4)),
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

  Widget cardPet(Rx<List<Service>> service) {
    return service.value.isEmpty
        ? Container(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
              child: const Text('Dịch vụ tạm thời chưa có'),
            ),
          )
        : Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            child: SizedBox(
              height: 220.h,
              child: GridView.builder(
                itemCount: service.value.length,
                scrollDirection: Axis.horizontal,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 30.w,
                  mainAxisExtent: 180.w,
                  crossAxisCount: 1,
                ),
                itemBuilder: (context, index) {
                  return CardPet(
                      image: service.value[index].urlImage!,
                      textTitle: service.value[index].name!,
                      subText: '',
                      price: double.parse('${service.value[index].price}'),
                      rate: 4.9);
                },
              ),
            ),
          );
  }
}
