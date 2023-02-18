import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pets/app/core/utils/number_utils.dart';
import 'package:pets/app/core/values/app_colors.dart';
import 'package:pets/app/core/values/font_weights.dart';
import 'package:pets/app/core/values/text_styles.dart';
import 'package:pets/app/modules/serviceSelect/model/radioBoxModel.dart';
import 'package:pets/app/modules/serviceSelect/model/radioModel.dart';

class RadioBoxItem extends StatelessWidget {
  final RadioBoxModel _item;
  RadioBoxItem(this._item);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.r),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                  width: 30.w,
                  height: 30.h,
                  decoration: BoxDecoration(
                    color: _item.isSelected ? AppColors.CFF7A00 : Colors.white,
                    border: Border.all(
                        width: 1.0,
                        color:
                            _item.isSelected ? AppColors.CFF7A00 : Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(8.r)),
                  ),
                  child:
                      _item.isSelected ? const Icon(Icons.check) : Container()),
              Container(
                margin: EdgeInsets.only(left: 10.r),
                child: Text(_item.text,
                    style: h6.copyWith(color: Colors.black, fontSize: 15.sp)),
              ),
            ],
          ),
          Text(
            '+${NumberUtils.vnd(_item.price)}đ',
            style: h6.copyWith(
                color: Colors.black,
                fontSize: 15.sp,
                fontWeight: FontWeights.regular),
          )
        ],
      ),
    );
  }
}
