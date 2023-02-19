import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pets/app/core/model/service.dart';
import 'package:pets/app/core/utils/number_utils.dart';
import 'package:pets/app/core/values/app_colors.dart';
import 'package:pets/app/core/values/font_weights.dart';
import 'package:pets/app/core/values/text_styles.dart';
import 'package:pets/app/core/widget/button.dart';
import 'package:pets/app/modules/cart/controller/cart_controller.dart';
import 'package:pets/app/route/app_routes.dart';

class CartScreen extends GetView<CartController> {
  bool cbAll = false;

  CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.Cf7f7f7,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
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
          "Giỏ Hàng",
          style: h5.copyWith(
              fontWeight: FontWeights.bold, color: AppColors.C000000),
        ),
        centerTitle: true,
      ),
      body: Obx(
        () => Column(
          children: [
            // controller.services.isNotEmpty
            //     ? Padding(
            //         padding:
            //             EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            //         child: Row(
            //           crossAxisAlignment: CrossAxisAlignment.center,
            //           children: [
            //             Checkbox(
            //               activeColor: AppColors.CFF7A00,
            //               value: cbAll,
            //               shape: RoundedRectangleBorder(
            //                   borderRadius: BorderRadius.circular(5.r)),
            //               onChanged: (value) {
            //                 cbAll = value!;
            //               },
            //             ),
            //             Text(
            //               'Chọn tất cả',
            //               style: h5.copyWith(
            //                   color: AppColors.C595959, fontSize: 15.sp),
            //             )
            //           ],
            //         ),
            //       )
            //     : 
                Container(),
            SizedBox(
              height: 630.h,
              child: ListView.separated(
                  physics: const ScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: controller.services.length,
                  separatorBuilder: (context, index) => SizedBox(
                        height: 5.h,
                      ),
                  itemBuilder: (context, index) => _card(
                      controller.services.keys.toList()[index],
                      controller.services.values.toList()[index],
                      index)),
            ),
            controller.services.isNotEmpty
                ? Padding(
                    padding: EdgeInsets.symmetric(vertical: 25.h),
                    child: Button(
                      text: "Trang thanh toán",
                      outLine: false,
                      ontap: () {
                        Get.toNamed(Routes.ORDER);
                      },
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }

//Service service, int quantity, int index
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
            // Checkbox(
            //   activeColor: AppColors.CFF7A00,
            //   value: cbAll,
            //   shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(5.r)),
            //   onChanged: (value) {},
            // ),
          ],
        ),
      ),
    );
  }
}
