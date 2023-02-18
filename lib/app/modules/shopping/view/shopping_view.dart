import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pets/app/core/utils/number_utils.dart';
import 'package:pets/app/core/values/app_colors.dart';
import 'package:pets/app/core/values/font_weights.dart';
import 'package:pets/app/core/values/text_styles.dart';
import 'package:pets/app/modules/serivce/widgets/BuildIndicator.dart';
import 'package:pets/app/modules/serivce/widgets/cardFooter.dart';
import 'package:pets/app/modules/serivce/widgets/cardPet.dart';
import 'package:pets/app/modules/serivce/widgets/circleCard.dart';
import 'package:pets/app/modules/serivce/widgets/paddingText.dart';
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleCard(
                            width: 96,
                            text: "Thức ăn cho mèo",
                            image:
                                'https://png.pngtree.com/png-vector/20191027/ourlarge/pngtree-bag-of-food-for-pets-and-food-bowl-icon-png-image_1889940.jpg',
                            ontap: () {
                              Get.toNamed(Routes.SEARCHSERVICE, arguments: {
                                'searchText': 'Thức ăn cho mèo',
                              });
                            },
                          ),
                          CircleCard(
                            width: 96,
                            text: "Thức ăn cho chó",
                            image:
                                'https://png.pngtree.com/png-vector/20220107/ourlarge/pngtree-dog-food-bowl-png-image_4239932.png',
                            ontap: () {
                              Get.toNamed(Routes.SEARCHSERVICE, arguments: {
                                'searchText': 'Thức ăncho chó',
                              });
                            },
                          ),
                          CircleCard(
                            width: 96,
                            text: "Đồ thường",
                            image:
                                'https://png.pngtree.com/png-vector/20191109/ourlarge/pngtree-clothes-drying-hanging-flat-color-icon-vector-icon-banner-te-png-image_1968119.jpg',
                            ontap: () {
                              Get.toNamed(Routes.SEARCHSERVICE, arguments: {
                                'searchText': 'Đồ thường',
                              });
                            },
                          ),
                          CircleCard(
                            width: 96,
                            text: "Sữa tắm",
                            image:
                                'https://img.pikbest.com/png-images/qiantu/mbe-style-shower-gel-shampoo-icon_2685466.png!w700wp',
                            ontap: () {
                              Get.toNamed(Routes.SEARCHSERVICE, arguments: {
                                'searchText': 'Sữa tắm',
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
                            width: 96,
                            text: "Đồ dùng, Phụ kiên",
                            image:
                                'https://salt.tikicdn.com/cache/280x280/ts/product/27/3c/2a/4e587710e407c0fa4409def28b35c76b.jpg',
                            ontap: () {
                              Get.toNamed(Routes.SEARCHSERVICE, arguments: {
                                'searchText': 'Đồ dùng, Phụ kiên',
                              });
                            },
                          ),
                          CircleCard(
                            width: 96,
                            text: "Mèo",
                            image:
                                'https://salt.tikicdn.com/cache/280x280/ts/product/27/3c/2a/4e587710e407c0fa4409def28b35c76b.jpg',
                            ontap: () {
                              Get.toNamed(Routes.SEARCHSERVICE, arguments: {
                                'searchText': 'Mèo',
                              });
                            },
                          ),
                          CircleCard(
                            width: 96,
                            text: "Chó",
                            image:
                                'https://salt.tikicdn.com/cache/280x280/ts/product/27/3c/2a/4e587710e407c0fa4409def28b35c76b.jpg',
                            ontap: () {
                              Get.toNamed(Routes.SEARCHSERVICE, arguments: {
                                'searchText': 'Chó',
                              });
                            },
                          ),
                          CircleCard(
                            width: 96,
                            text: "Trợ giúp",
                            image:
                                'https://salt.tikicdn.com/cache/280x280/ts/product/27/3c/2a/4e587710e407c0fa4409def28b35c76b.jpg',
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
            const PaddingText(text: 'Ưu đãi nổi bật'),
            cardPet(
                'Tắm vệ sinh cắt tỉa trọn gói tại nhà',
                'Pet Homies',
                'https://bizweb.dktcdn.net/100/346/633/files/thuc-an-cho-meo-con-vi-ca-bien-va-sua-whiskas-ocean-fish-with-milk-1-1-kg.jpg?v=1557559120556',
                450000,
                5),
            const PaddingText(text: 'Sản phẩm nổi bật'),
            cardShop(),
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

  Widget cardShop() {
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
                      Get.toNamed(Routes.ITEMDETAIL);
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.r),
                          child: Image.asset(
                            'assets/png/cat.png',
                            height: 112,
                            width: double.infinity,
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        SizedBox(
                          child: Text('Giường cho chó Oval Sofa Sofa bed',
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
                              'Giá ${NumberUtils.vnd(1455000)}đ',
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
