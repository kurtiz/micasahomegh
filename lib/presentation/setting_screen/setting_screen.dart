import 'bloc/setting_bloc.dart';
import 'models/setting_model.dart';
import 'package:flutter/material.dart';
import 'package:micasa_home_gh/core/app_export.dart';
import 'package:micasa_home_gh/core/utils/validation_functions.dart';
import 'package:micasa_home_gh/widgets/app_bar/appbar_leading_image.dart';
import 'package:micasa_home_gh/widgets/app_bar/appbar_subtitle.dart';
import 'package:micasa_home_gh/widgets/app_bar/custom_app_bar.dart';
import 'package:micasa_home_gh/widgets/custom_floating_text_field.dart';
import 'package:micasa_home_gh/widgets/custom_switch.dart';

// ignore_for_file: must_be_immutable
class SettingScreen extends StatelessWidget {
  SettingScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<SettingBloc>(
        create: (context) =>
            SettingBloc(SettingState(settingModelObj: SettingModel()))
              ..add(SettingInitialEvent()),
        child: SettingScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 20.v),
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.h),
                        child: Column(children: [
                          _buildPassword(context,
                              password: "msg_personal_information".tr,
                              editTwo: ImageConstant.imgEdit2Primarycontainer),
                          SizedBox(height: 15.v),
                          _buildName(context),
                          SizedBox(height: 15.v),
                          _buildEmail(context),
                          SizedBox(height: 38.v),
                          _buildPassword(context,
                              password: "lbl_password".tr,
                              editTwo: ImageConstant.imgEdit2Primarycontainer),
                          SizedBox(height: 15.v),
                          _buildPassword2(context),
                          SizedBox(height: 34.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("lbl_notifications".tr,
                                  style: CustomTextStyles
                                      .titleMediumNunitoSansGray50002)),
                          SizedBox(height: 11.v),
                          _buildComponentEleven(context),
                          SizedBox(height: 10.v),
                          _buildComponentTwelve(context),
                          SizedBox(height: 10.v),
                          _buildComponentNine(context),
                          SizedBox(height: 35.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("lbl_help_center".tr,
                                  style: CustomTextStyles
                                      .titleMediumNunitoSansGray50002)),
                          SizedBox(height: 14.v),
                          _buildPassword(context,
                              password: "lbl_faq".tr,
                              editTwo: ImageConstant.imgFrame15),
                          SizedBox(height: 10.v),
                          _buildFAQ(context),
                          SizedBox(height: 10.v),
                          _buildFAQ1(context)
                        ]))))));
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
        title: AppbarSubtitle(text: "lbl_setting".tr));
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return BlocSelector<SettingBloc, SettingState, TextEditingController?>(
        selector: (state) => state.nameController,
        builder: (context, nameController) {
          return CustomFloatingTextField(
              controller: nameController,
              labelText: "lbl_name".tr,
              labelStyle: theme.textTheme.titleSmall!,
              hintText: "lbl_name".tr,
              hintStyle: theme.textTheme.titleSmall!,
              validator: (value) {
                if (!isText(value)) {
                  return "err_msg_please_enter_valid_text".tr;
                }
                return null;
              },
              borderDecoration:
                  FloatingTextFormFieldStyleHelper.outlineBlueGray);
        });
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return BlocSelector<SettingBloc, SettingState, TextEditingController?>(
        selector: (state) => state.emailController,
        builder: (context, emailController) {
          return CustomFloatingTextField(
              controller: emailController,
              labelText: "lbl_email".tr,
              labelStyle: theme.textTheme.titleSmall!,
              hintText: "lbl_email".tr,
              hintStyle: theme.textTheme.titleSmall!,
              textInputType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || (!isValidEmail(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_email".tr;
                }
                return null;
              },
              borderDecoration:
                  FloatingTextFormFieldStyleHelper.outlineBlueGray);
        });
  }

  /// Section Widget
  Widget _buildPassword2(BuildContext context) {
    return BlocSelector<SettingBloc, SettingState, TextEditingController?>(
        selector: (state) => state.passwordController,
        builder: (context, passwordController) {
          return CustomFloatingTextField(
              controller: passwordController,
              labelText: "lbl_name".tr,
              labelStyle: theme.textTheme.bodyMedium!,
              hintText: "lbl_name".tr,
              textInputType: TextInputType.visiblePassword,
              obscureText: true,
              validator: (value) {
                if (value == null ||
                    (!isValidPassword(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_password".tr;
                }
                return null;
              },
              contentPadding: EdgeInsets.fromLTRB(16.h, 28.v, 16.h, 14.v),
              borderDecoration:
                  FloatingTextFormFieldStyleHelper.outlineBlueGray);
        });
  }

  /// Section Widget
  Widget _buildComponentEleven(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 15.v),
        decoration: AppDecoration.outlineBluegray400333
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(left: 3.h, bottom: 1.v),
              child: Text("lbl_sales".tr,
                  style:
                      CustomTextStyles.titleMediumNunitoSansPrimarySemiBold_3)),
          BlocSelector<SettingBloc, SettingState, bool?>(
              selector: (state) => state.isSelectedSwitch,
              builder: (context, isSelectedSwitch) {
                return CustomSwitch(
                    value: isSelectedSwitch,
                    onChange: (value) {
                      context
                          .read<SettingBloc>()
                          .add(ChangeSwitchEvent(value: value));
                    });
              })
        ]));
  }

  /// Section Widget
  Widget _buildComponentTwelve(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 15.v),
        decoration: AppDecoration.outlineBluegray400333
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(left: 3.h, bottom: 1.v),
              child: Text("lbl_new_arrivals".tr,
                  style:
                      CustomTextStyles.titleMediumNunitoSansPrimarySemiBold_3)),
          BlocSelector<SettingBloc, SettingState, bool?>(
              selector: (state) => state.isSelectedSwitch1,
              builder: (context, isSelectedSwitch1) {
                return CustomSwitch(
                    value: isSelectedSwitch1,
                    onChange: (value) {
                      context
                          .read<SettingBloc>()
                          .add(ChangeSwitch1Event(value: value));
                    });
              })
        ]));
  }

  /// Section Widget
  Widget _buildComponentNine(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 15.v),
        decoration: AppDecoration.outlineBluegray400333
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(left: 3.h, top: 1.v),
              child: Text("msg_delivery_status".tr,
                  style:
                      CustomTextStyles.titleMediumNunitoSansPrimarySemiBold_3)),
          BlocSelector<SettingBloc, SettingState, bool?>(
              selector: (state) => state.isSelectedSwitch2,
              builder: (context, isSelectedSwitch2) {
                return CustomSwitch(
                    value: isSelectedSwitch2,
                    onChange: (value) {
                      context
                          .read<SettingBloc>()
                          .add(ChangeSwitch2Event(value: value));
                    });
              })
        ]));
  }

  /// Section Widget
  Widget _buildFAQ(BuildContext context) {
    return BlocSelector<SettingBloc, SettingState, TextEditingController?>(
        selector: (state) => state.fAQController,
        builder: (context, fAQController) {
          return CustomFloatingTextField(
              controller: fAQController,
              labelText: "lbl_contact_us".tr,
              labelStyle: CustomTextStyles.titleMediumNunitoSansPrimary_1,
              hintText: "lbl_contact_us".tr,
              hintStyle: CustomTextStyles.titleMediumNunitoSansPrimary_1,
              suffix: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgFrame15,
                      height: 24.adaptSize,
                      width: 24.adaptSize)),
              suffixConstraints: BoxConstraints(maxHeight: 54.v),
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 20.h, vertical: 16.v),
              borderDecoration:
                  FloatingTextFormFieldStyleHelper.outlineBlueGrayTL4);
        });
  }

  /// Section Widget
  Widget _buildFAQ1(BuildContext context) {
    return BlocSelector<SettingBloc, SettingState, TextEditingController?>(
        selector: (state) => state.fAQController1,
        builder: (context, fAQController1) {
          return CustomFloatingTextField(
              controller: fAQController1,
              labelText: "lbl_privacy_terms".tr,
              labelStyle: CustomTextStyles.titleMediumNunitoSansPrimary_1,
              hintText: "lbl_privacy_terms".tr,
              hintStyle: CustomTextStyles.titleMediumNunitoSansPrimary_1,
              textInputAction: TextInputAction.done,
              suffix: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgFrame15,
                      height: 24.adaptSize,
                      width: 24.adaptSize)),
              suffixConstraints: BoxConstraints(maxHeight: 54.v),
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 20.h, vertical: 16.v),
              borderDecoration:
                  FloatingTextFormFieldStyleHelper.outlineBlueGrayTL4);
        });
  }

  /// Common widget
  Widget _buildPassword(
    BuildContext context, {
    required String password,
    required String editTwo,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: Text(password,
              style: CustomTextStyles.titleMediumNunitoSansGray50002
                  .copyWith(color: appTheme.gray50002))),
      CustomImageView(
          imagePath: editTwo, height: 24.adaptSize, width: 24.adaptSize)
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
