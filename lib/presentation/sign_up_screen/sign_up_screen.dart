import 'bloc/sign_up_bloc.dart';
import 'models/sign_up_model.dart';
import 'package:flutter/material.dart';
import 'package:micasa_home_gh/core/app_export.dart';
import 'package:micasa_home_gh/widgets/custom_elevated_button.dart';
import 'package:micasa_home_gh/widgets/custom_text_form_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SignUpBloc>(
      create: (context) => SignUpBloc(SignUpState(
        signUpModelObj: SignUpModel(),
      ))
        ..add(SignUpInitialEvent()),
      child: SignUpScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 21.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildFortySeven(context),
              SizedBox(height: 29.v),
              Padding(
                padding: EdgeInsets.only(left: 29.h),
                child: Text(
                  "lbl_welcome".tr,
                  style: CustomTextStyles.headlineSmallMerriweatherBold,
                ),
              ),
              SizedBox(height: 24.v),
              Container(
                width: 345.h,
                margin: EdgeInsets.only(right: 30.h),
                padding: EdgeInsets.symmetric(vertical: 29.v),
                decoration: AppDecoration.outlineBlueGray,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 30.h),
                      child: Text(
                        "lbl_name".tr,
                        style: CustomTextStyles.bodyMediumGray50001,
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
                    SizedBox(height: 29.v),
                    Padding(
                      padding: EdgeInsets.only(left: 30.h),
                      child: Text(
                        "lbl_email".tr,
                        style: CustomTextStyles.bodyMediumGray50001,
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
                    SizedBox(height: 29.v),
                    Padding(
                      padding: EdgeInsets.only(left: 30.h),
                      child: Text(
                        "lbl_password".tr,
                        style: CustomTextStyles.bodyMediumGray50001,
                      ),
                    ),
                    SizedBox(height: 9.v),
                    Padding(
                      padding: EdgeInsets.only(left: 30.h),
                      child: BlocBuilder<SignUpBloc, SignUpState>(
                        builder: (context, state) {
                          return CustomTextFormField(
                            controller: state.passwordController,
                            alignment: Alignment.centerRight,
                            suffix: InkWell(
                              onTap: () {
                                context.read<SignUpBloc>().add(
                                    ChangePasswordVisibilityEvent(
                                        value: !state.isShowPassword));
                              },
                              child: Container(
                                margin: EdgeInsets.only(
                                  left: 30.h,
                                  right: 25.h,
                                  bottom: 12.v,
                                ),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgEye2,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize,
                                ),
                              ),
                            ),
                            suffixConstraints: BoxConstraints(
                              maxHeight: 32.v,
                            ),
                            obscureText: state.isShowPassword,
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 29.v),
                    Padding(
                      padding: EdgeInsets.only(left: 30.h),
                      child: Text(
                        "msg_confirm_password".tr,
                        style: CustomTextStyles.bodyMediumGray50001,
                      ),
                    ),
                    SizedBox(height: 9.v),
                    Padding(
                      padding: EdgeInsets.only(left: 30.h),
                      child: BlocBuilder<SignUpBloc, SignUpState>(
                        builder: (context, state) {
                          return CustomTextFormField(
                            controller: state.confirmpasswordController,
                            textInputAction: TextInputAction.done,
                            alignment: Alignment.centerRight,
                            suffix: InkWell(
                              onTap: () {
                                context.read<SignUpBloc>().add(
                                    ChangePasswordVisibilityEvent1(
                                        value: !state.isShowPassword1));
                              },
                              child: Container(
                                margin: EdgeInsets.only(
                                  left: 30.h,
                                  right: 25.h,
                                  bottom: 12.v,
                                ),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgEye2,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize,
                                ),
                              ),
                            ),
                            suffixConstraints: BoxConstraints(
                              maxHeight: 32.v,
                            ),
                            obscureText: state.isShowPassword1,
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 50.v),
                    CustomElevatedButton(
                      height: 50.v,
                      text: "lbl_sign_up".tr,
                      margin: EdgeInsets.symmetric(horizontal: 30.h),
                      buttonTextStyle: CustomTextStyles
                          .titleMediumNunitoSansOnErrorContainer,
                      alignment: Alignment.center,
                    ),
                    SizedBox(height: 30.v),
                    Align(
                      alignment: Alignment.center,
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "msg_already_have_account2".tr,
                              style:
                                  CustomTextStyles.titleSmallPrimaryContainer,
                            ),
                            TextSpan(
                              text: "lbl_sign_in".tr,
                              style:
                                  CustomTextStyles.titleSmallErrorContainerBold,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
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
  }

  /// Section Widget
  Widget _buildFortySeven(BuildContext context) {
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
