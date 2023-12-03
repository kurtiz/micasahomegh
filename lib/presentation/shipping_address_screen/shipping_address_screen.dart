import 'bloc/shipping_address_bloc.dart';
import 'models/shipping_address_model.dart';
import 'package:flutter/material.dart';
import 'package:micasa_home_gh/core/app_export.dart';
import 'package:micasa_home_gh/widgets/app_bar/appbar_leading_image.dart';
import 'package:micasa_home_gh/widgets/app_bar/appbar_subtitle.dart';
import 'package:micasa_home_gh/widgets/app_bar/custom_app_bar.dart';
import 'package:micasa_home_gh/widgets/custom_checkbox_button.dart';
import 'package:micasa_home_gh/widgets/custom_floating_button.dart';
import 'package:micasa_home_gh/widgets/custom_icon_button.dart';

class ShippingAddressScreen extends StatelessWidget {
  const ShippingAddressScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ShippingAddressBloc>(
        create: (context) => ShippingAddressBloc(ShippingAddressState(
            shippingAddressModelObj: ShippingAddressModel()))
          ..add(ShippingAddressInitialEvent()),
        child: ShippingAddressScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 19.v),
                      Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: Row(children: [
                            Padding(
                                padding: EdgeInsets.only(top: 1.v, bottom: 3.v),
                                child: CustomIconButton(
                                    height: 20.adaptSize,
                                    width: 20.adaptSize,
                                    padding: EdgeInsets.all(2.h),
                                    decoration: IconButtonStyleHelper
                                        .fillErrorContainerTL4,
                                    child: CustomImageView(
                                        imagePath:
                                            ImageConstant.imgCheckboxOn))),
                            Padding(
                                padding: EdgeInsets.only(left: 10.h),
                                child: Text("msg_use_as_the_shipping".tr,
                                    style: CustomTextStyles.bodyLargePrimary))
                          ])),
                      SizedBox(height: 14.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.h),
                          child: _buildSixtyOne(context)),
                      SizedBox(height: 31.v),
                      _buildCheckboxon(context),
                      SizedBox(height: 13.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.h),
                          child: _buildSixtyOne(context)),
                      SizedBox(height: 31.v),
                      _buildCheckboxon1(context),
                      SizedBox(height: 13.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.h),
                          child: _buildSixtyOne(context)),
                      SizedBox(height: 13.v)
                    ])),
            floatingActionButton: _buildFloatingActionButton(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 36.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 16.h, top: 12.v, bottom: 12.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarSubtitle(text: "msg_shipping_address2".tr),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildCheckboxon(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 20.h),
        child: BlocSelector<ShippingAddressBloc, ShippingAddressState, bool?>(
            selector: (state) => state.checkboxon,
            builder: (context, checkboxon) {
              return CustomCheckboxButton(
                  text: "msg_use_as_the_shipping".tr,
                  value: checkboxon,
                  onChange: (value) {
                    context
                        .read<ShippingAddressBloc>()
                        .add(ChangeCheckBoxEvent(value: value));
                  });
            }));
  }

  /// Section Widget
  Widget _buildCheckboxon1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 20.h),
        child: BlocSelector<ShippingAddressBloc, ShippingAddressState, bool?>(
            selector: (state) => state.checkboxon1,
            builder: (context, checkboxon1) {
              return CustomCheckboxButton(
                  text: "msg_use_as_the_shipping".tr,
                  value: checkboxon1,
                  onChange: (value) {
                    context
                        .read<ShippingAddressBloc>()
                        .add(ChangeCheckBox1Event(value: value));
                  });
            }));
  }

  /// Section Widget
  Widget _buildFloatingActionButton(BuildContext context) {
    return CustomFloatingButton(
        height: 52,
        width: 52,
        backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
        child: CustomImageView(
            imagePath: ImageConstant.imgPlus, height: 26.0.v, width: 26.0.h));
  }

  /// Common widget
  Widget _buildSixtyOne(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 12.v),
        decoration: AppDecoration.outlineBluegray400331
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 20.h, right: 15.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("lbl_bruno_fernandes".tr,
                            style: CustomTextStyles
                                .titleMediumNunitoSansPrimary18),
                        CustomImageView(
                            imagePath: ImageConstant.imgEdit2,
                            height: 24.adaptSize,
                            width: 24.adaptSize)
                      ])),
              SizedBox(height: 10.v),
              Divider(color: appTheme.gray200),
              SizedBox(height: 13.v),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      width: 267.h,
                      margin: EdgeInsets.only(left: 20.h, right: 47.h),
                      child: Text("msg_25_rue_robert_latouche".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.bodyMedium!
                              .copyWith(height: 1.79))))
            ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
