import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pets/app/core/utils/number_utils.dart';
import 'package:pets/app/core/values/app_colors.dart';
import 'package:pets/app/core/values/font_weights.dart';
import 'package:pets/app/core/values/text_styles.dart';
import 'package:pets/app/core/widget/button.dart';
import 'package:pets/app/core/widget/dashedLine.dart';
import 'package:pets/app/modules/promotion/controller/promotion_controller.dart';

class PromotionScreen extends GetView<PromotionController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.Cf2f2f2,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        flexibleSpace: const Image(
          image: AssetImage('assets/png/appbarBackground.png'),
          fit: BoxFit.fill,
        ),
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back_ios,
            size: 22.sp,
            color: AppColors.C868686,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.h,
            ),
            Container(
              width: 366.w,
              height: 80.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: AppColors.Cffffff),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            style: TextStyle(
                                fontSize: 20.sp, color: AppColors.C000000),
                            children: <TextSpan>[
                              TextSpan(text: '0', style: h6.copyWith()),
                              TextSpan(
                                  text: ' xu',
                                  style: h6.copyWith(fontSize: 15.sp)),
                            ],
                          ),
                        ),
                        Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.w, vertical: 5.h),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14.r),
                                color: AppColors.CFF7A00),
                            child: Text(
                              'Sử dụng ngay',
                              style: h6.copyWith(
                                  color: AppColors.CF7F8FD, fontSize: 18.sp),
                            ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Text(
                      "Mẹo: Bạn có thể dùng Xu để đổi lấy các mã giảm giá khác.",
                      style: h6.copyWith(
                          color: AppColors.C717171,
                          fontWeight: FontWeights.regular,
                          fontSize: 11.sp),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Text(
              'Ưu đãi nổi bật',
              style: h5.copyWith(fontWeight: FontWeights.bold),
            ),
            SizedBox(
              height: 20.h,
            ),
            _voucher(
                'https://i.pinimg.com/564x/99/bc/a7/99bca79553b34d44465fdbb92307b832.jpg',
                "Pet Homie",
                20000,
                'Cho hóa đơn từ 150k',
                'Đến 26-02-2023',
                39),
            SizedBox(
              height: 30.h,
            ),
            _voucher(
                'https://i.pinimg.com/564x/00/0e/0f/000e0f98504fec8a90fa2c2d871381e6.jpg',
                "Pet Homie",
                20000,
                'Cho hóa đơn từ 150k',
                'Đến 26-02-2023',
                100)
          ],
        ),
      ),
    );
  }

  Widget _voucher(String image, String titleText, double discountPrice,
      String condition, String deadline, int percent) {
    return Container(
      height: 240.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10.r),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.r),
                  child: Image.network(
                    image,
                    // 'https://i.pinimg.com/564x/9e/05/fa/9e05faa8512924dc4fae42c49192150c.jpg',
                    
                    width: 80.w,
                    height: 80.h,

                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      titleText,
                      // 'Pet Homie',
                      style: h6.copyWith(
                          color: Colors.grey.withOpacity(.8),
                          fontSize: 15.sp,
                          fontWeight: FontWeights.bold),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      'Giảm ${NumberUtils.vnd(discountPrice)}đ',
                      style: h6.copyWith(
                          color: Colors.black,
                          fontSize: 20.sp,
                          fontWeight: FontWeights.bold),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      condition,
                      style: h6.copyWith(
                          fontSize: 15.sp,
                          color: const Color(0xff676767),
                          fontWeight: FontWeights.regular),
                    ),
                  ],
                ),
                Text(
                  deadline,
                  style: h6.copyWith(
                      fontSize: 12.sp,
                      color: const Color(0xff676767),
                      fontWeight: FontWeights.regular),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: const MySeparator(color: Colors.grey),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Stack(
              children: [
                SizedBox(
                  height: 20.h,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    child: LinearProgressIndicator(
                      value: percent * 0.01,
                      backgroundColor: const Color(0xffFFCFA4),
                      valueColor: AlwaysStoppedAnimation<Color>(percent == 100
                          ? Color(0xff818181).withOpacity(0.8)
                          : Color(0xffFF5E03)),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Đã thu thập ${percent}%",
                      style: h6.copyWith(fontSize: 15.sp, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Align(
              alignment: Alignment.centerRight,
              child: Button(
                color: percent == 100 ? Color(0xffA6A6A6) : Color(0xffFF7A00),
                width: 100.w,
                height: 40.h,
                text: 'Thu thập',
                fontSize: 15.sp,
                outLine: false,
                ontap: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
