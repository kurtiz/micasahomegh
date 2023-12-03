import 'bloc/payment_method_bloc.dart';
import 'models/payment_method_model.dart';
import 'package:flutter/material.dart';
import 'package:micasa_home_gh/core/app_export.dart';
import 'package:micasa_home_gh/widgets/app_bar/appbar_leading_image.dart';
import 'package:micasa_home_gh/widgets/app_bar/appbar_subtitle.dart';
import 'package:micasa_home_gh/widgets/app_bar/custom_app_bar.dart';
import 'package:micasa_home_gh/widgets/custom_checkbox_button.dart';
import 'package:micasa_home_gh/widgets/custom_floating_button.dart';

class PaymentMethodScreen extends StatelessWidget {
  const PaymentMethodScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<PaymentMethodBloc>(
        create: (context) => PaymentMethodBloc(
            PaymentMethodState(paymentMethodModelObj: PaymentMethodModel()))
          ..add(PaymentMethodInitialEvent()),
        child: PaymentMethodScreen());
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
                      SizedBox(height: 44.v),
                      _buildPaymentCard(context),
                      SizedBox(height: 20.v),
                      _buildVector(context),
                      SizedBox(height: 29.v),
                      _buildPaymentCard1(context),
                      SizedBox(height: 27.v),
                      _buildCheckboxoff(context),
                      SizedBox(height: 27.v)
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
        title: AppbarSubtitle(text: "lbl_payment_method2".tr),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildPaymentCard(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Container(
            width: 333.h,
            margin: EdgeInsets.symmetric(horizontal: 21.h),
            decoration: AppDecoration.primary
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 20.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgMastercardYellow800,
                      height: 24.v,
                      width: 31.h,
                      radius: BorderRadius.circular(7.h),
                      margin: EdgeInsets.only(left: 25.h)),
                  SizedBox(height: 21.v),
                  Padding(
                      padding: EdgeInsets.only(left: 25.h),
                      child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "msg2".tr,
                                style: theme.textTheme.titleLarge),
                            TextSpan(
                                text: "lbl_3947".tr,
                                style: CustomTextStyles.titleLargeRegular)
                          ]),
                          textAlign: TextAlign.left)),
                  SizedBox(height: 6.v),
                  _buildExpiryDate(context,
                      expiryDate: "lbl_expiry_date".tr,
                      fiveHundredTwentyThree: "lbl_05_23".tr,
                      cardHolderName: "msg_card_holder_name".tr,
                      jennyferDoe: "lbl_jennyfer_doe".tr)
                ])));
  }

  /// Section Widget
  Widget _buildVector(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 21.h),
        child: BlocSelector<PaymentMethodBloc, PaymentMethodState, bool?>(
            selector: (state) => state.vector,
            builder: (context, vector) {
              return CustomCheckboxButton(
                  text: "msg_use_as_default_payment".tr,
                  value: vector,
                  textStyle: CustomTextStyles.bodyMediumSecondaryContainer,
                  onChange: (value) {
                    context
                        .read<PaymentMethodBloc>()
                        .add(ChangeCheckBoxEvent(value: value));
                  });
            }));
  }

  /// Section Widget
  Widget _buildPaymentCard1(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Container(
            width: 333.h,
            margin: EdgeInsets.symmetric(horizontal: 21.h),
            decoration: AppDecoration.fillGray50003
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 20.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgVector,
                      height: 16.v,
                      width: 50.h,
                      radius: BorderRadius.circular(7.h),
                      margin: EdgeInsets.only(left: 25.h)),
                  SizedBox(height: 29.v),
                  Padding(
                      padding: EdgeInsets.only(left: 25.h),
                      child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "msg2".tr,
                                style: theme.textTheme.titleLarge),
                            TextSpan(
                                text: "lbl_3947".tr,
                                style: CustomTextStyles.titleLargeRegular)
                          ]),
                          textAlign: TextAlign.left)),
                  SizedBox(height: 6.v),
                  _buildExpiryDate(context,
                      expiryDate: "lbl_expiry_date".tr,
                      fiveHundredTwentyThree: "lbl_05_23".tr,
                      cardHolderName: "msg_card_holder_name".tr,
                      jennyferDoe: "lbl_jennyfer_doe".tr)
                ])));
  }

  /// Section Widget
  Widget _buildCheckboxoff(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 21.h),
        child: BlocSelector<PaymentMethodBloc, PaymentMethodState, bool?>(
            selector: (state) => state.checkboxoff,
            builder: (context, checkboxoff) {
              return CustomCheckboxButton(
                  text: "msg_use_as_default_payment".tr,
                  value: checkboxoff,
                  textStyle: CustomTextStyles.bodyMediumSecondaryContainer,
                  onChange: (value) {
                    context
                        .read<PaymentMethodBloc>()
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
  Widget _buildExpiryDate(
    BuildContext context, {
    required String expiryDate,
    required String fiveHundredTwentyThree,
    required String cardHolderName,
    required String jennyferDoe,
  }) {
    return SizedBox(
        height: 87.v,
        width: 308.h,
        child: Stack(alignment: Alignment.topLeft, children: [
          Align(
              alignment: Alignment.centerRight,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 40.h, vertical: 22.v),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(ImageConstant.imgGroup6),
                          fit: BoxFit.cover)),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 2.v),
                        Opacity(
                            opacity: 0.8,
                            child: Text(expiryDate,
                                style: theme.textTheme.labelLarge!.copyWith(
                                    color:
                                        theme.colorScheme.onErrorContainer))),
                        SizedBox(height: 2.v),
                        Padding(
                            padding: EdgeInsets.only(right: 27.h),
                            child: Text(fiveHundredTwentyThree,
                                style: CustomTextStyles
                                    .titleSmallOnErrorContainer
                                    .copyWith(
                                        color: theme
                                            .colorScheme.onErrorContainer
                                            .withOpacity(1))))
                      ]))),
          Align(
              alignment: Alignment.topLeft,
              child: Opacity(
                  opacity: 0.8,
                  child: Padding(
                      padding: EdgeInsets.only(top: 24.v),
                      child: Text(cardHolderName,
                          style: theme.textTheme.labelLarge!.copyWith(
                              color: theme.colorScheme.onErrorContainer))))),
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                  padding: EdgeInsets.only(bottom: 21.v),
                  child: Text(jennyferDoe,
                      style: CustomTextStyles.titleSmallOnErrorContainer
                          .copyWith(
                              color: theme.colorScheme.onErrorContainer
                                  .withOpacity(1)))))
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
