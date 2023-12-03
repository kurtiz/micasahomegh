import 'bloc/check_out_bloc.dart';
import 'models/check_out_model.dart';
import 'package:flutter/material.dart';
import 'package:micasa_home_gh/core/app_export.dart';
import 'package:micasa_home_gh/widgets/app_bar/appbar_leading_image.dart';
import 'package:micasa_home_gh/widgets/app_bar/appbar_subtitle.dart';
import 'package:micasa_home_gh/widgets/app_bar/custom_app_bar.dart';
import 'package:micasa_home_gh/widgets/custom_elevated_button.dart';
import 'package:micasa_home_gh/widgets/custom_text_form_field.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<CheckOutBloc>(
        create: (context) =>
            CheckOutBloc(CheckOutState(checkOutModelObj: CheckOutModel()))
              ..add(CheckOutInitialEvent()),
        child: CheckOutScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.all(19.h),
                child: Column(children: [
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 1.h),
                      child: _buildFortyNine(context,
                          payment: "msg_shipping_address".tr,
                          editTwo: ImageConstant.imgEdit2)),
                  SizedBox(height: 9.v),
                  _buildFiftyFive(context),
                  SizedBox(height: 30.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 1.h),
                      child: _buildFortyNine(context,
                          payment: "lbl_payment".tr,
                          editTwo: ImageConstant.imgEdit2Primarycontainer)),
                  SizedBox(height: 8.v),
                  BlocSelector<CheckOutBloc, CheckOutState,
                          TextEditingController?>(
                      selector: (state) => state.mastercardController,
                      builder: (context, mastercardController) {
                        return CustomTextFormField(
                            controller: mastercardController,
                            hintText: "msg_3947".tr,
                            prefix: Container(
                                padding:
                                    EdgeInsets.fromLTRB(16.h, 7.v, 16.h, 6.v),
                                margin:
                                    EdgeInsets.fromLTRB(20.h, 15.v, 17.h, 15.v),
                                decoration: BoxDecoration(
                                    color: theme.colorScheme.onErrorContainer
                                        .withOpacity(1),
                                    borderRadius: BorderRadius.circular(8.h),
                                    boxShadow: [
                                      BoxShadow(
                                          color: appTheme.black9000c
                                              .withOpacity(0.08),
                                          spreadRadius: 2.h,
                                          blurRadius: 2.h,
                                          offset: Offset(0, 1))
                                    ]),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgMastercard,
                                    height: 25.v,
                                    width: 32.h)),
                            prefixConstraints: BoxConstraints(maxHeight: 68.v),
                            contentPadding: EdgeInsets.only(
                                top: 24.v, right: 30.h, bottom: 24.v),
                            borderDecoration:
                                TextFormFieldStyleHelper.outlineBlueGrayTL8,
                            filled: true,
                            fillColor: theme.colorScheme.onErrorContainer
                                .withOpacity(1));
                      }),
                  SizedBox(height: 30.v),
                  _buildFiftyOne(context),
                  SizedBox(height: 9.v),
                  BlocSelector<CheckOutBloc, CheckOutState,
                          TextEditingController?>(
                      selector: (state) => state.durationController,
                      builder: (context, durationController) {
                        return CustomTextFormField(
                            controller: durationController,
                            hintText: "lbl_fast_2_3days".tr,
                            hintStyle:
                                CustomTextStyles.titleSmallErrorContainer,
                            textInputAction: TextInputAction.done,
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 30.h, vertical: 17.v),
                            borderDecoration:
                                TextFormFieldStyleHelper.outlineBlueGrayTL4,
                            filled: true,
                            fillColor: theme.colorScheme.onErrorContainer
                                .withOpacity(1));
                      }),
                  SizedBox(height: 38.v),
                  _buildSixty(context),
                  SizedBox(height: 6.v)
                ])),
            bottomNavigationBar: _buildSUBMITORDER(context)));
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
        title: AppbarSubtitle(text: "lbl_check_out".tr));
  }

  /// Section Widget
  Widget _buildFiftyFive(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 1.h),
        padding: EdgeInsets.symmetric(vertical: 12.v),
        decoration: AppDecoration.outlineBluegray400331
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Text("lbl_bruno_fernandes".tr,
                      style: CustomTextStyles.titleMediumNunitoSans)),
              SizedBox(height: 10.v),
              Divider(color: appTheme.gray200),
              SizedBox(height: 12.v),
              Container(
                  width: 267.h,
                  margin: EdgeInsets.only(left: 20.h, right: 47.h),
                  child: Text("msg_25_rue_robert_latouche".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style:
                          theme.textTheme.bodyMedium!.copyWith(height: 1.79)))
            ]));
  }

  /// Section Widget
  Widget _buildFiftyOne(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 1.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 2.v),
              child: Text("lbl_delivery_method".tr,
                  style: CustomTextStyles.titleMediumNunitoSansGray50002)),
          CustomImageView(
              imagePath: ImageConstant.imgEdit2Primarycontainer,
              height: 24.adaptSize,
              width: 24.adaptSize)
        ]));
  }

  /// Section Widget
  Widget _buildSixty(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 1.h),
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 14.v),
        decoration: AppDecoration.outlineBluegray400331
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildFiftyThree(context,
                  delivery: "lbl_order".tr, price: "lbl_95_00".tr),
              SizedBox(height: 14.v),
              _buildFiftyThree(context,
                  delivery: "lbl_delivery".tr, price: "lbl_5_00".tr),
              SizedBox(height: 13.v),
              _buildFiftyThree(context,
                  delivery: "lbl_total".tr, price: "lbl_100_00".tr)
            ]));
  }

  /// Section Widget
  Widget _buildSUBMITORDER(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_submit_order".tr,
        margin: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 35.v));
  }

  /// Common widget
  Widget _buildFortyNine(
    BuildContext context, {
    required String payment,
    required String editTwo,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(payment,
          style: CustomTextStyles.titleMediumNunitoSansGray50001
              .copyWith(color: appTheme.gray50001)),
      CustomImageView(
          imagePath: editTwo, height: 24.adaptSize, width: 24.adaptSize)
    ]);
  }

  /// Common widget
  Widget _buildFiftyThree(
    BuildContext context, {
    required String delivery,
    required String price,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: Text(delivery,
              style: CustomTextStyles.bodyLargePrimaryContainer
                  .copyWith(color: theme.colorScheme.primaryContainer))),
      Text(price,
          style: CustomTextStyles.titleMediumNunitoSansPrimarySemiBold
              .copyWith(color: theme.colorScheme.primary))
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
