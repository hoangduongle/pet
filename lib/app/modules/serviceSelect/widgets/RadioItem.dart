import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pets/app/core/utils/number_utils.dart';
import 'package:pets/app/core/values/app_colors.dart';
import 'package:pets/app/core/values/text_styles.dart';
import 'package:pets/app/modules/serviceSelect/model/radioModel.dart';

class RadioItem extends StatelessWidget {
  final RadioModel _item;
  RadioItem(this._item);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.r),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            width: 90.w,
            height: 55.h,
            decoration: BoxDecoration(
              color: _item.isSelected ? AppColors.CFF7A00 : Colors.white,
              border: Border.all(
                  width: 1.0,
                  color: _item.isSelected ? AppColors.CFF7A00 : Colors.grey),
              borderRadius: BorderRadius.all(Radius.circular(8.r)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(_item.textKg,
                    style: h6.copyWith(
                        color: _item.isSelected ? Colors.white : Colors.black,
                        fontSize: 15.sp)),
                SizedBox(
                  height: 5.h,
                ),
                Text("${NumberUtils.vnd(_item.price)}đ",
                    style: h6.copyWith(
                        color: _item.isSelected ? Colors.white : Colors.black,
                        fontSize: 15.sp)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
