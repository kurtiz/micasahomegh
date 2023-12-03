import '../models/order_item_model.dart';
import 'package:flutter/material.dart';
import 'package:micasa_home_gh/core/app_export.dart';
import 'package:micasa_home_gh/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class OrderItemWidget extends StatelessWidget {
  OrderItemWidget(
    this.orderItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  OrderItemModel orderItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14.v),
      decoration: AppDecoration.outlineBluegray400331.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 21.h,
              right: 15.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  orderItemModelObj.orderNo!,
                  style:
                      CustomTextStyles.titleMediumNunitoSansPrimarySemiBold_3,
                ),
                Text(
                  orderItemModelObj.date!,
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          SizedBox(height: 10.v),
          Divider(
            color: appTheme.gray200,
          ),
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.only(
              left: 21.h,
              right: 15.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 1.v),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_quantity".tr,
                          style: CustomTextStyles
                              .titleMediumNunitoSansPrimaryContainerSemiBold,
                        ),
                        TextSpan(
                          text: " ",
                        ),
                        TextSpan(
                          text: "lbl_03".tr,
                          style: CustomTextStyles.titleMediumNunitoSansPrimary,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_total_amount".tr,
                        style: CustomTextStyles
                            .titleMediumNunitoSansPrimaryContainerSemiBold,
                      ),
                      TextSpan(
                        text: "lbl_150".tr,
                        style: CustomTextStyles.titleMediumNunitoSansPrimary,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
          SizedBox(height: 29.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(right: 15.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomElevatedButton(
                    height: 36.v,
                    width: 100.h,
                    text: "lbl_detail".tr,
                    buttonStyle: CustomButtonStyles.fillPrimary,
                    buttonTextStyle: CustomTextStyles
                        .titleMediumNunitoSansOnErrorContainerSemiBold,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 6.v,
                      bottom: 7.v,
                    ),
                    child: Text(
                      orderItemModelObj.delivered!,
                      style: CustomTextStyles.titleMediumNunitoSansGreen600,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 5.v),
        ],
      ),
    );
  }
}
