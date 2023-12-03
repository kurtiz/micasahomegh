import '../models/favorite_item_model.dart';
import 'package:flutter/material.dart';
import 'package:micasa_home_gh/core/app_export.dart';
import 'package:micasa_home_gh/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class FavoriteItemWidget extends StatelessWidget {
  FavoriteItemWidget(
    this.favoriteItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FavoriteItemModel favoriteItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: favoriteItemModelObj?.coffeeTable,
          height: 100.adaptSize,
          width: 100.adaptSize,
          radius: BorderRadius.circular(
            10.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 20.h,
            bottom: 54.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                favoriteItemModelObj.coffeeTable1!,
                style: CustomTextStyles.titleSmallGray700,
              ),
              SizedBox(height: 4.v),
              Text(
                favoriteItemModelObj.price!,
                style: CustomTextStyles.titleMediumNunitoSans_1,
              ),
            ],
          ),
        ),
        Spacer(),
        Column(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgShape,
              height: 24.adaptSize,
              width: 24.adaptSize,
              alignment: Alignment.centerRight,
              margin: EdgeInsets.only(right: 3.h),
            ),
            SizedBox(height: 42.v),
            CustomIconButton(
              height: 34.adaptSize,
              width: 34.adaptSize,
              padding: EdgeInsets.all(7.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgShoppingBagIconErrorcontainer,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
