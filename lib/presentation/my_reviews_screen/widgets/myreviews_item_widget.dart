import '../models/myreviews_item_model.dart';
import 'package:flutter/material.dart';
import 'package:micasa_home_gh/core/app_export.dart';
import 'package:micasa_home_gh/widgets/custom_rating_bar.dart';

// ignore: must_be_immutable
class MyreviewsItemWidget extends StatelessWidget {
  MyreviewsItemWidget(
    this.myreviewsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MyreviewsItemModel myreviewsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.outlineBluegray400331.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgNathanDumlaoG70x70,
                  height: 70.adaptSize,
                  width: 70.adaptSize,
                  radius: BorderRadius.circular(
                    6.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20.h,
                    top: 9.v,
                    bottom: 11.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        myreviewsItemModelObj.coffeeTable!,
                        style: CustomTextStyles.titleMediumNunitoSansGray700,
                      ),
                      SizedBox(height: 5.v),
                      Text(
                        myreviewsItemModelObj.price!,
                        style: CustomTextStyles
                            .titleMediumNunitoSansPrimaryExtraBold,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 14.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomRatingBar(
                ignoreGestures: true,
                initialRating: 0,
              ),
              Text(
                myreviewsItemModelObj.date!,
                style: theme.textTheme.bodySmall,
              ),
            ],
          ),
          SizedBox(height: 14.v),
          SizedBox(
            width: 303.h,
            child: Text(
              myreviewsItemModelObj.description!,
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.justify,
              style: CustomTextStyles.bodyMediumPrimary,
            ),
          ),
        ],
      ),
    );
  }
}
