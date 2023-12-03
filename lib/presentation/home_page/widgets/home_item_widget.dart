import '../models/home_item_model.dart';
import 'package:flutter/material.dart';
import 'package:micasa_home_gh/core/app_export.dart';
import 'package:micasa_home_gh/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class HomeItemWidget extends StatelessWidget {
  HomeItemWidget(
    this.homeItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  HomeItemModel homeItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 51.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          CustomIconButton(
            height: 44.adaptSize,
            width: 44.adaptSize,
            padding: EdgeInsets.all(12.h),
            decoration: IconButtonStyleHelper.fillErrorContainer,
            child: CustomImageView(
              imagePath: homeItemModelObj?.iconButton,
            ),
          ),
          SizedBox(height: 5.v),
          Text(
            homeItemModelObj.popular!,
            style: theme.textTheme.titleSmall,
          ),
        ],
      ),
    );
  }
}
