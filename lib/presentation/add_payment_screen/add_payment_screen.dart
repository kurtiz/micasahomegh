import 'bloc/add_payment_bloc.dart';
import 'models/add_payment_model.dart';
import 'package:flutter/material.dart';
import 'package:micasa_home_gh/core/app_export.dart';
import 'package:micasa_home_gh/core/utils/validation_functions.dart';
import 'package:micasa_home_gh/widgets/app_bar/appbar_leading_image.dart';
import 'package:micasa_home_gh/widgets/app_bar/appbar_subtitle.dart';
import 'package:micasa_home_gh/widgets/app_bar/custom_app_bar.dart';
import 'package:micasa_home_gh/widgets/custom_elevated_button.dart';
import 'package:micasa_home_gh/widgets/custom_floating_text_field.dart';

// ignore_for_file: must_be_immutable
class AddPaymentScreen extends StatelessWidget {
  AddPaymentScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<AddPaymentBloc>(
        create: (context) => AddPaymentBloc(
            AddPaymentState(addPaymentModelObj: AddPaymentModel()))
          ..add(AddPaymentInitialEvent()),
        child: AddPaymentScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<AddPaymentBloc, AddPaymentState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              resizeToAvoidBottomInset: false,
              appBar: _buildAppBar(context),
              body: Form(
                  key: _formKey,
                  child: Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.h, vertical: 22.v),
                      child: Column(children: [
                        _buildPaymentCard(context),
                        SizedBox(height: 40.v),
                        _buildComponentTwentyFive(context),
                        SizedBox(height: 20.v),
                        BlocSelector<AddPaymentBloc, AddPaymentState,
                                TextEditingController?>(
                            selector: (state) => state.cardNumberController,
                            builder: (context, cardNumberController) {
                              return CustomFloatingTextField(
                                  controller: cardNumberController,
                                  labelText: "lbl_card_number".tr,
                                  labelStyle: CustomTextStyles
                                      .titleMediumNunitoSansPrimarySemiBold_2,
                                  hintText: "lbl_card_number".tr,
                                  hintStyle: CustomTextStyles
                                      .titleMediumNunitoSansPrimarySemiBold_2,
                                  textInputType: TextInputType.number,
                                  validator: (value) {
                                    if (!isNumeric(value)) {
                                      return "err_msg_please_enter_valid_number"
                                          .tr;
                                    }
                                    return null;
                                  });
                            }),
                        SizedBox(height: 20.v),
                        _buildExpirationDate(context),
                        SizedBox(height: 5.v)
                      ]))),
              bottomNavigationBar: _buildADDNEWCARD(context)));
    });
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
        title: AppbarSubtitle(text: "msg_add_payment_method".tr));
  }

  /// Section Widget
  Widget _buildPaymentCard(BuildContext context) {
    return Container(
        width: 333.h,
        decoration: AppDecoration.primary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 20.v),
              Padding(
                  padding: EdgeInsets.only(left: 25.h),
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgMastercardYellow800,
                        height: 24.v,
                        width: 31.h,
                        radius: BorderRadius.circular(7.h)),
                    CustomImageView(
                        imagePath: ImageConstant.imgVector,
                        height: 16.v,
                        width: 50.h,
                        radius: BorderRadius.circular(7.h),
                        margin:
                            EdgeInsets.only(left: 14.h, top: 4.v, bottom: 4.v))
                  ])),
              SizedBox(height: 21.v),
              Padding(
                  padding: EdgeInsets.only(left: 25.h),
                  child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "msg2".tr, style: theme.textTheme.titleLarge),
                        TextSpan(
                            text: "lbl_xxxx".tr,
                            style: CustomTextStyles.titleLargeRegular)
                      ]),
                      textAlign: TextAlign.left)),
              SizedBox(height: 7.v),
              Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                      height: 87.v,
                      width: 308.h,
                      child: Stack(alignment: Alignment.topLeft, children: [
                        Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 40.h, vertical: 22.v),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image:
                                            AssetImage(ImageConstant.imgGroup6),
                                        fit: BoxFit.cover)),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(height: 2.v),
                                      Opacity(
                                          opacity: 0.8,
                                          child: Text("lbl_expiry_date".tr,
                                              style:
                                                  theme.textTheme.labelLarge)),
                                      SizedBox(height: 2.v),
                                      Padding(
                                          padding: EdgeInsets.only(right: 24.h),
                                          child: Text("lbl_xx_xx2".tr,
                                              style: CustomTextStyles
                                                  .titleSmallOnErrorContainer))
                                    ]))),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Opacity(
                                opacity: 0.8,
                                child: Padding(
                                    padding: EdgeInsets.only(top: 24.v),
                                    child: Text("msg_card_holder_name".tr,
                                        style: theme.textTheme.labelLarge)))),
                        Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                                padding: EdgeInsets.only(bottom: 22.v),
                                child: Text("lbl_xxxxxx".tr,
                                    style: CustomTextStyles
                                        .titleSmallOnErrorContainer)))
                      ])))
            ]));
  }

  /// Section Widget
  Widget _buildComponentTwentyFive(BuildContext context) {
    return Container(
        width: 335.h,
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 9.v),
        decoration: AppDecoration.fillGray100
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("lbl_cardholder_name".tr, style: theme.textTheme.bodySmall),
              SizedBox(height: 7.v),
              Text("lbl_ex_bruno_pham".tr,
                  style: CustomTextStyles.titleMediumNunitoSansGray400),
              SizedBox(height: 1.v)
            ]));
  }

  /// Section Widget
  Widget _buildExpirationDate(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Expanded(
          child: Container(
              margin: EdgeInsets.only(right: 10.h),
              padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 9.v),
              decoration: AppDecoration.fillGray100
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("lbl_cvv".tr, style: theme.textTheme.bodySmall),
                    SizedBox(height: 7.v),
                    Text("lbl_ex_123".tr,
                        style: CustomTextStyles.titleMediumNunitoSansGray400),
                    SizedBox(height: 1.v)
                  ]))),
      Expanded(
          child: Padding(
              padding: EdgeInsets.only(left: 10.h),
              child: BlocSelector<AddPaymentBloc, AddPaymentState,
                      TextEditingController?>(
                  selector: (state) => state.expirationDateController,
                  builder: (context, expirationDateController) {
                    return CustomFloatingTextField(
                        controller: expirationDateController,
                        labelText: "lbl_expiration_date".tr,
                        labelStyle: CustomTextStyles
                            .titleMediumNunitoSansPrimarySemiBold_3,
                        hintText: "lbl_expiration_date".tr,
                        textInputAction: TextInputAction.done);
                  })))
    ]);
  }

  /// Section Widget
  Widget _buildADDNEWCARD(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_add_new_card".tr,
        margin: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 35.v));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
