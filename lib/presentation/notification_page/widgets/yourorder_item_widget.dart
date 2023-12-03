import '../models/yourorder_item_model.dart';
import 'package:flutter/material.dart';
import 'package:micasa_home_gh/core/app_export.dart';

// ignore: must_be_immutable
class YourorderItemWidget extends StatelessWidget {
  YourorderItemWidget(
    this.yourorderItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  YourorderItemModel yourorderItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgJonnyCaspariW70x70,
          height: 70.adaptSize,
          width: 70.adaptSize,
          radius: BorderRadius.circular(
            6.h,
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              left: 9.h,
              bottom: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "msg_your_order_1234567892".tr,
                  style: CustomTextStyles.labelLargeErrorContainer,
                ),
                SizedBox(height: 5.v),
                SizedBox(
                  width: 255.h,
                  child: Text(
                    "msg_lorem_ipsum_dolor".tr,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.justify,
                    style: CustomTextStyles.bodySmall10_1.copyWith(
                      height: 1.50,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
