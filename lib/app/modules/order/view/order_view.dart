import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pets/app/core/model/service.dart';
import 'package:pets/app/core/utils/number_utils.dart';
import 'package:pets/app/core/values/app_colors.dart';
import 'package:pets/app/core/values/font_weights.dart';
import 'package:pets/app/core/values/text_styles.dart';
import 'package:pets/app/core/widget/button.dart';
import 'package:pets/app/modules/cart/controller/cart_controller.dart';
import 'package:pets/app/modules/order/controller/order_controller.dart';
import 'package:pets/app/modules/order/view/success_view.dart';
import 'package:pets/app/route/app_routes.dart';

class OrderScreen extends GetView<CartController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
        child: Button(
          text: 'Đặt hàng',
          outLine: false,
          ontap: () {
            controller.addNewOrder();
          },
        ),
      ),
      backgroundColor: AppColors.Cf7f7f7,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: AppColors.C868686,
            size: 22.sp,
          ),
        ),
        title: Text(
          "Thanh toán",
          style: h5.copyWith(
              fontWeight: FontWeights.bold, color: AppColors.C000000),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.h, left: 25.w, right: 25.w),
              child: Container(
                height: 120.h,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.r)),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: Color(0xffFF7A00),
                        size: 50.sp,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Địa chỉ nhận hàng',
                            style: h5.copyWith(fontSize: 20.sp),
                          ),
                          SizedBox(
                            width: 250.w,
                            child: Text(
                              'Trần Đức Anh (+84) 0326715687 S107 Vinhomes grandpark quận 9, Nguyễn Xiển, Long Bình, Quận 9, Thành phố Hồ Chí Minh',
                              style: h5.copyWith(fontSize: 14.sp),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      const Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xff676767),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Column(
              children: [
                controller.services.length > 0
                    ? Column(
                        children: [
                          for (int i = 0; i < controller.services.length; i++)
                            _card(controller.services.keys.toList()[i],
                                controller.services.values.toList()[i], i)
                        ],
                      )
                    : Container()
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h, left: 25.w, right: 25.w),
              child: Container(
                height: 50.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Phương thức vận chuyển",
                        style: h5.copyWith(
                            fontWeight: FontWeights.bold,
                            color: AppColors.C000000,
                            fontSize: 18.sp),
                      ),
                      const Icon(Icons.arrow_drop_down)
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h, left: 80.w, right: 25.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hỏa tốc",
                        style: h5.copyWith(
                            fontWeight: FontWeights.regular,
                            color: const Color(0xff676767),
                            fontSize: 15.sp),
                      ),
                      Text(
                        "Nhận hàng vào 22/12/2023",
                        style: h5.copyWith(
                            fontWeight: FontWeights.regular,
                            color: const Color(0xff676767),
                            fontSize: 15.sp),
                      ),
                    ],
                  ),
                  Text(
                    "50,000đ",
                    style: h5.copyWith(
                        fontWeight: FontWeights.regular,
                        color: const Color(0xff676767),
                        fontSize: 15.sp),
                  ),
                  Radio(
                    value: true,
                    groupValue: true,
                    activeColor: AppColors.CFF7A00,
                    onChanged: (value) {},
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsetsDirectional.only(start: 80.r, end: 30.r),
              height: 1.0,
              color: Colors.grey.withOpacity(0.8.r),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h, left: 80.w, right: 25.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Nhanh express",
                        style: h5.copyWith(
                            fontWeight: FontWeights.regular,
                            color: const Color(0xff676767),
                            fontSize: 15.sp),
                      ),
                      Text(
                        "Nhận hàng vào 25/12/2023",
                        style: h5.copyWith(
                            fontWeight: FontWeights.regular,
                            color: const Color(0xff676767),
                            fontSize: 15.sp),
                      ),
                    ],
                  ),
                  Text(
                    "21,000đ",
                    style: h5.copyWith(
                        fontWeight: FontWeights.regular,
                        color: const Color(0xff676767),
                        fontSize: 15.sp),
                  ),
                  Radio(
                    value: true,
                    groupValue: [],
                    onChanged: (value) {},
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h, left: 25.w, right: 25.w),
              child: Container(
                height: 50.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Tổng số tiền",
                        style: h5.copyWith(
                            fontWeight: FontWeights.bold,
                            color: AppColors.C000000,
                            fontSize: 18.sp),
                      ),
                      Obx(() => Text(
                            'đ${NumberUtils.vnd(controller.total)}',
                            style: h5.copyWith(
                                fontWeight: FontWeights.bold,
                                color: AppColors.CFF7A00,
                                fontSize: 18.sp),
                          )),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h, left: 25.w, right: 25.w),
              child: Container(
                height: 50.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Chọn voucher",
                        style: h5.copyWith(
                            fontWeight: FontWeights.bold,
                            color: AppColors.C000000,
                            fontSize: 18.sp),
                      ),
                      const Icon(Icons.arrow_drop_down)
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h, left: 100.w, right: 25.w),
              child: Container(
                height: 50.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: AppColors.CFF7A00,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Petini giảm giá 50k",
                        style: h5.copyWith(
                            fontWeight: FontWeights.regular,
                            color: AppColors.Cffffff,
                            fontSize: 15.sp),
                      ),
                      Text(
                        "-50,000đ",
                        style: h5.copyWith(
                            fontWeight: FontWeights.regular,
                            color: AppColors.Cffffff,
                            fontSize: 15.sp),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h, left: 25.w, right: 25.w),
              child: Container(
                height: 50.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Chọn phương thức thanh toán",
                        style: h5.copyWith(
                            fontWeight: FontWeights.bold,
                            color: AppColors.C000000,
                            fontSize: 18.sp),
                      ),
                      Text(
                        "Tiền mặt",
                        style: h5.copyWith(
                            fontWeight: FontWeights.bold,
                            color: AppColors.C000000,
                            fontSize: 15.sp),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h, left: 25.w, right: 25.w),
              child: Container(
                height: 50.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Chi tiết thanh toán",
                        style: h5.copyWith(
                            fontWeight: FontWeights.bold,
                            color: AppColors.C000000,
                            fontSize: 18.sp),
                      ),
                      Container(),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 100.w, right: 25.w, top: 10.h),
              child: Column(
                children: [
                  _row('Tổng tiền hàng', controller.total, false),
                  SizedBox(
                    height: 10.h,
                  ),
                  _row('Phí vận chuyển', 51000, false),
                  SizedBox(
                    height: 10.h,
                  ),
                  _row('Khuyến mãi', 50000, false),
                  SizedBox(
                    height: 10.h,
                  ),
                  _row('Tổng thanh toán', controller.total + 51000 - 50000,
                      true),
                ],
              ),
            ),
            SizedBox(
              height: 100.h,
            ),
          ],
        ),
      ),
    );
  }

  Widget _row(String text, double price, bool isTotal) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: h5.copyWith(
              color: const Color(0xff676767),
              fontSize: isTotal ? 20.sp : 15.sp,
              fontWeight: isTotal ? FontWeights.bold : FontWeights.regular),
        ),
        Text(
          'đ${NumberUtils.vnd(price)}',
          style: h5.copyWith(
            color: isTotal ? const Color(0xffFF7A00) : const Color(0xff676767),
            fontSize: isTotal ? 25.sp : 15.sp,
          ),
        ),
      ],
    );
  }

  Widget _card(Service service, int quantity, int index) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
      child: Container(
        height: 150.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r), color: Colors.white),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.all(12.r),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.r),
                    child: Image.network(
                      service.urlImage!,
                      width: 110.w,
                      height: 115.h,
                      fit: BoxFit.cover,
                    )),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          width: 200.w,
                          child: Text(
                            service.name!,
                            style: const TextStyle(
                                color: AppColors.C000000,
                                fontWeight: FontWeights.medium),
                          ),
                        ),
                        service.isCareService == false
                            ? Container()
                            : SizedBox(
                                width: 200.w,
                                child: Text(
                                  'Lịch dự kiến ${service.description!}',
                                  style: h5.copyWith(
                                    fontSize: 15.sp,
                                    color: AppColors.C949494,
                                    fontWeight: FontWeights.regular,
                                  ),
                                ),
                              ),
                      ],
                    ),
                    Column(
                      children: [
                        service.isCareService == true
                            ? Container()
                            : SizedBox(
                                width: 200.w,
                                child: Text(
                                  'đ0',
                                  style: h5.copyWith(
                                    fontSize: 15.sp,
                                    color: AppColors.C949494,
                                    fontWeight: FontWeights.regular,
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                              ),
                        SizedBox(
                          width: 200.w,
                          child: Text(
                            'đ${NumberUtils.intToVnd(service.price)}',
                            style: h5.copyWith(
                                fontSize: 25.sp,
                                color: AppColors.CFF7A00,
                                fontWeight: FontWeights.bold),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 0.h,
              ),
              child: Text('x$quantity'),
            ),
          ],
        ),
      ),
    );
  }
}
