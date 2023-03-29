import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pets/app/core/model/service.dart';
import 'package:pets/app/core/utils/number_utils.dart';
import 'package:pets/app/core/values/app_colors.dart';
import 'package:pets/app/core/values/font_weights.dart';
import 'package:pets/app/core/values/text_styles.dart';
import 'package:pets/app/modules/main/controller/main_controller.dart';
import 'package:pets/app/modules/serivce/widgets/BuildIndicator.dart';
import 'package:pets/app/modules/serivce/widgets/cardFooter.dart';
import 'package:pets/app/modules/serivce/widgets/cardPet.dart';
import 'package:pets/app/modules/serivce/widgets/circleCard.dart';
import 'package:pets/app/modules/serivce/widgets/paddingText.dart';
import 'package:pets/app/modules/shopping/controller/shopping_controller.dart';
import 'package:pets/app/route/app_routes.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ShoppingScreen extends GetView<ShoppingController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      // Get.toNamed(Routes.SEARCHSERVICE, arguments: {
                      //   'searchText': '',
                      // });
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
                          Text('Tìm thứ tốt nhất cho Boss nhà bạn',
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
                  padding: EdgeInsets.symmetric(horizontal: 22.w),
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
                      SizedBox(
                        height: 15.h,
                      ),
                    ],
                  )),
            ),
            SizedBox(
              height: 30.h,
            ),
            const PaddingText(text: 'Ưu đãi nổi bật'),
            Obx(
              () => cardPet(controller.serviceData),
            ),
            const PaddingText(text: 'Sản phẩm nổi bật'),
            Obx(
              () => cardPet(controller.serviceData),
            ),
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

  Widget buildIndicator(int length, int currentIndex) {
    return AnimatedSmoothIndicator(
      curve: Curves.easeInOut,
      activeIndex: currentIndex,
      count: length,
      effect: SlideEffect(
          dotHeight: 15.h,
          dotWidth: 15.w,
          spacing: 20,
          dotColor: Colors.grey,
          activeDotColor: Color.fromARGB(255, 92, 92, 92)),
    );
  }

  Widget paddingText(String text) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w, bottom: 20.h),
      child: Text(
        text,
        style: GoogleFonts.inter(
            textStyle: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.sp)),
      ),
    );
  }

  Widget cardShop(Rx<List<Service>> service) {
    return Padding(
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
            return Container(
              padding: EdgeInsets.all(5.r),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7.r),
                color: AppColors.Cf3f3f3,
              ),
              child: Material(
                color: AppColors.Cf3f3f3,
                elevation: 0,
                child: InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      Get.toNamed(Routes.ITEMDETAIL, arguments: {
                        'service': service.value[index],
                      });
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.r),
                          child: Image.network(
                            controller.serviceData.value[index].urlImage!,
                            height: 112,
                            width: double.infinity,
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        SizedBox(
                          child: Text(controller.serviceData.value[index].name!,
                              style: h6.copyWith(
                                  color: AppColors.C343434, fontSize: 15.sp)),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Giá ${NumberUtils.intToVnd(controller.serviceData.value[index].price)}đ',
                              style: h6.copyWith(
                                  color: AppColors.C000000,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeights.bold),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7.r),
                                  color: AppColors.CFF7A00),
                              padding: EdgeInsets.all(4.r),
                              child: Icon(
                                Icons.shopping_basket_outlined,
                                color: AppColors.Cffffff,
                                size: 16.sp,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )),
              ),
            );
          },
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
