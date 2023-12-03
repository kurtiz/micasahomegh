import '../models/home1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:micasa_home_gh/core/app_export.dart';
import 'package:micasa_home_gh/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Home1ItemWidget extends StatelessWidget {
  Home1ItemWidget(
    this.home1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Home1ItemModel home1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 200.v,
            width: 157.h,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                CustomImageView(
                  imagePath: home1ItemModelObj?.blackSimpleLamp,
                  height: 200.v,
                  width: 157.h,
                  radius: BorderRadius.circular(
                    10.h,
                  ),
                  alignment: Alignment.center,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    right: 10.h,
                    bottom: 10.v,
                  ),
                  child: CustomIconButton(
                    height: 30.adaptSize,
                    width: 30.adaptSize,
                    padding: EdgeInsets.all(5.h),
                    decoration: IconButtonStyleHelper.fillGrayTL6,
                    alignment: Alignment.bottomRight,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgShoppingBagIcon,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.v),
          Text(
            home1ItemModelObj.blackSimpleLamp1!,
            style: CustomTextStyles.bodyMediumGray700_1,
          ),
          SizedBox(height: 2.v),
          Text(
            home1ItemModelObj.price!,
            style: CustomTextStyles.titleSmallErrorContainer,
          ),
        ],
      ),
    );
  }
}
