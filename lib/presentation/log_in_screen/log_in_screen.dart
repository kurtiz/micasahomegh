import 'bloc/log_in_bloc.dart';
import 'models/log_in_model.dart';
import 'package:flutter/material.dart';
import 'package:micasa_home_gh/core/app_export.dart';
import 'package:micasa_home_gh/widgets/custom_elevated_button.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<LogInBloc>(
      create: (context) => LogInBloc(LogInState(
        logInModelObj: LogInModel(),
      ))
        ..add(LogInInitialEvent()),
      child: LogInScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<LogInBloc, LogInState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(vertical: 21.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildLine(context),
                  SizedBox(height: 29.v),
                  Container(
                    width: 216.h,
                    margin: EdgeInsets.only(left: 29.h),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "lbl_hello".tr,
                            style: theme.textTheme.headlineLarge,
                          ),
                          TextSpan(
                            text: "lbl_welcome_back".tr,
                            style: CustomTextStyles.headlineSmallMerriweather,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(height: 27.v),
                  Container(
                    width: 345.h,
                    margin: EdgeInsets.only(right: 30.h),
                    padding: EdgeInsets.symmetric(vertical: 34.v),
                    decoration: AppDecoration.outlineBlueGray,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 30.h),
                            child: Text(
                              "lbl_email".tr,
                              style: CustomTextStyles.bodyMediumGray50001,
                            ),
                          ),
                        ),
                        SizedBox(height: 39.v),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Divider(
                            color: appTheme.gray300,
                            indent: 30.h,
                          ),
                        ),
                        SizedBox(height: 34.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 30.h),
                            child: Text(
                              "lbl_password".tr,
                              style: CustomTextStyles.bodyMediumGray50001,
                            ),
                          ),
                        ),
                        SizedBox(height: 9.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgEye2,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                          alignment: Alignment.centerRight,
                          margin: EdgeInsets.only(right: 25.h),
                        ),
                        SizedBox(height: 10.v),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Divider(
                            color: appTheme.gray300,
                            indent: 30.h,
                          ),
                        ),
                        SizedBox(height: 35.v),
                        Text(
                          "lbl_forgot_password".tr,
                          style: CustomTextStyles.titleMediumNunitoSansSemiBold,
                        ),
                        SizedBox(height: 39.v),
                        CustomElevatedButton(
                          height: 50.v,
                          text: "lbl_log_in".tr,
                          margin: EdgeInsets.symmetric(horizontal: 30.h),
                          buttonTextStyle: CustomTextStyles
                              .titleMediumNunitoSansOnErrorContainer,
                        ),
                        SizedBox(height: 29.v),
                        Text(
                          "lbl_sign_up".tr,
                          style: CustomTextStyles.titleMediumNunitoSansSemiBold,
                        ),
                        SizedBox(height: 6.v),
                      ],
                    ),
                  ),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildLine(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 31.v),
              child: SizedBox(
                width: 105.h,
                child: Divider(),
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgGroup,
              height: 63.adaptSize,
              width: 63.adaptSize,
              margin: EdgeInsets.only(left: 19.h),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 31.v),
              child: SizedBox(
                width: 126.h,
                child: Divider(
                  indent: 21.h,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
