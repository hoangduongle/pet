import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pets/app/core/utils/number_utils.dart';
import 'package:pets/app/core/values/app_colors.dart';
import 'package:pets/app/core/values/font_weights.dart';
import 'package:pets/app/core/values/text_styles.dart';

class CardPet extends StatelessWidget {
  final String image;
  final String textTitle;
  final String subText;
  final double price;
  final double rate;

  const CardPet({super.key, required this.image, required this.textTitle, required this.subText, required this.price, required this.rate});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () {},
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.r),
                child: Image.network(
                  image,
                  height: 112,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              SizedBox(
                child: Text(textTitle, style: h6.copyWith(color: AppColors.C343434, fontSize: 15.sp)),
              ),
              SizedBox(
                height: 4.h,
              ),
              SizedBox(
                width: 151.w,
                child: Text(subText, style: h5.copyWith(fontSize: 10.sp, color: AppColors.C7A7A7A)),
              ),
              SizedBox(
                height: 4.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Giá ${NumberUtils.vnd(price)}đ',
                    style: h6.copyWith(color: AppColors.CFF7A00, fontSize: 15.sp, fontWeight: FontWeights.bold),
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: AppColors.CFFE600,
                      ),
                      Text(
                        '$rate',
                        style: h6.copyWith(color: AppColors.C2D2D2D, fontSize: 15.sp, fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),
            ],
          )),
    );
  }
}
