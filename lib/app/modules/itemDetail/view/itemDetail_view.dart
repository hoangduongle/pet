import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pets/app/core/widget/button.dart';
import 'package:pets/app/route/app_routes.dart';

class ItemDetailScreen extends StatefulWidget {
  const ItemDetailScreen({super.key});

  @override
  State<ItemDetailScreen> createState() => _ItemDetailScreenState();
}

class _ItemDetailScreenState extends State<ItemDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffdfdfd),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Color(0xff868686),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Material(
              color: Colors.transparent,
              elevation: 0,
              child: InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () {
                  Get.toNamed(Routes.CART);
                },
                child: Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.black,
                ),
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Image.asset('assets/png/servicedetail.png'),
          SizedBox(
            height: 430.h,
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Pate Cho Mèo Catchy Gói 70g',
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22.sp),
                        ),
                        Icon(
                          Icons.share_outlined,
                          size: 30,
                          color: Color(0xff717171),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 7.h),
                      child: Row(
                        children: [
                          for (int i = 0; i < 5; i++)
                            Icon(
                              Icons.star,
                              color: Color(0xffFFCE31),
                              size: 30.sp,
                            ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            '5.0',
                            style: TextStyle(fontSize: 20.sp, color: Color(0xff3F3F3F), fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            '3 đánh giá',
                            style: TextStyle(fontSize: 15.sp, color: Color(0xff9F9F9F), fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'đ15,000',
                      style: TextStyle(fontSize: 24.sp, color: Color(0xff3D3D3D), fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      'Thông tin sản phẩm',
                      style: TextStyle(fontSize: 20.sp, color: Color(0xff4D4D4D), fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      'Trên thị trường hiện nay có vô vàn những thương hiệu pate khác nhau. Vì thế mà hương vị của chúng cũng đa dạng hơn, được làm từ các các loại thực phẩm khác nhau. Chính điều này đã gây ra nhiều khó khăn hơn cho con sen khi lên thực đơn ăn cho thú cưng của mình. Một số loại pate được gợi ý dưới đây đã được nhiều mèo con yêu thích bạn có thể tham khảo.',
                      style: TextStyle(fontSize: 17.sp, color: Color(0xff747474), fontWeight: FontWeight.normal),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Text(
                      'Vị béo ngậy của gan heo sẽ là món ăn vô cùng hấp dẫn dành cho thú cưng của bạn. Pate gan được coi là món ăn nhiều dinh dưỡng nhất cùng với hương vị đặc trưng. Nếu mèo đang trong thời kỳ mang bầu thì đây sẽ món ăn lý tưởng để kích thích vị giác và cân bằng dưỡng chất cho chúng.',
                      style: TextStyle(fontSize: 17.sp, color: Color(0xff747474), fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25.h,
          ),
          Button(
            text: 'Thêm vào giỏ',
            outLine: false,
            ontap: () {},
          )
        ],
      ),
    );
  }
}
