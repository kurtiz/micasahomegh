import '../models/cart_item_model.dart';
import 'package:flutter/material.dart';
import 'package:micasa_home_gh/core/app_export.dart';
import 'package:micasa_home_gh/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class CartItemWidget extends StatelessWidget {
  CartItemWidget(
    this.cartItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CartItemModel cartItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: cartItemModelObj?.minimalStand,
          height: 100.adaptSize,
          width: 100.adaptSize,
          radius: BorderRadius.circular(
            10.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 214.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          cartItemModelObj.minimalStand1!,
                          style: CustomTextStyles.titleSmallGray50003,
                        ),
                        SizedBox(height: 5.v),
                        Text(
                          cartItemModelObj.price!,
                          style:
                              CustomTextStyles.titleMediumNunitoSansPrimary_1,
                        ),
                      ],
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgShape,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(bottom: 22.v),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 23.v),
              Row(
                children: [
                  CustomIconButton(
                    height: 30.adaptSize,
                    width: 30.adaptSize,
                    padding: EdgeInsets.all(8.h),
                    decoration: IconButtonStyleHelper.fillGrayTL61,
                    child: CustomImageView(
                      imagePath: cartItemModelObj?.iconButton,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 15.h,
                      bottom: 3.v,
                    ),
                    child: Text(
                      cartItemModelObj.one!,
                      style: CustomTextStyles
                          .titleMediumNunitoSansPrimarySemiBold18,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.h,
                      vertical: 14.v,
                    ),
                    decoration: AppDecoration.fillGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder6,
                    ),
                    child: Container(
                      height: 2.v,
                      width: 14.h,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.primary,
                        borderRadius: BorderRadius.circular(
                          1.h,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
