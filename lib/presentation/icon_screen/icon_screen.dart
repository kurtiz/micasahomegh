import 'bloc/icon_bloc.dart';
import 'models/icon_model.dart';
import 'package:flutter/material.dart';
import 'package:micasa_home_gh/core/app_export.dart';
import 'package:micasa_home_gh/widgets/app_bar/appbar_leading_image.dart';
import 'package:micasa_home_gh/widgets/app_bar/appbar_title_iconbutton.dart';
import 'package:micasa_home_gh/widgets/app_bar/appbar_title_image.dart';
import 'package:micasa_home_gh/widgets/app_bar/custom_app_bar.dart';
import 'package:micasa_home_gh/widgets/custom_icon_button.dart';

class IconScreen extends StatelessWidget {
  const IconScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<IconBloc>(
      create: (context) => IconBloc(IconState(
        iconModelObj: IconModel(),
      ))
        ..add(IconInitialEvent()),
      child: IconScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<IconBloc, IconState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 36.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgFrame15Primary,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin: EdgeInsets.only(bottom: 6.v),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgEdit2,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin: EdgeInsets.only(
                          left: 16.h,
                          top: 4.v,
                          bottom: 2.v,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgComponent29Variant3,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin: EdgeInsets.only(
                          left: 23.h,
                          top: 6.v,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 13.v),
                  Padding(
                    padding: EdgeInsets.only(right: 36.h),
                    child: Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgPlus,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          margin: EdgeInsets.only(bottom: 4.v),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgSearchPrimary,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          margin: EdgeInsets.only(
                            left: 16.h,
                            top: 2.v,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgClarityHomeSolidGray50003,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          margin: EdgeInsets.only(
                            left: 23.h,
                            top: 2.v,
                            bottom: 2.v,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgMarker1,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          margin: EdgeInsets.only(
                            left: 28.h,
                            top: 2.v,
                            bottom: 2.v,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgBell,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          margin: EdgeInsets.only(
                            left: 28.h,
                            top: 2.v,
                            bottom: 2.v,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgBiPerson,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          margin: EdgeInsets.only(
                            left: 28.h,
                            top: 2.v,
                            bottom: 2.v,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15.v),
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgArrowLeft,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        margin: EdgeInsets.only(bottom: 4.v),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgEye2,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        margin: EdgeInsets.only(
                          left: 20.h,
                          top: 4.v,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 3.v),
                  Padding(
                    padding: EdgeInsets.only(right: 74.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgFrame15,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          margin: EdgeInsets.only(
                            top: 5.v,
                            bottom: 31.v,
                          ),
                        ),
                        Spacer(
                          flex: 50,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgFiClock,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                          margin: EdgeInsets.only(
                            top: 17.v,
                            bottom: 23.v,
                          ),
                        ),
                        Spacer(
                          flex: 49,
                        ),
                        CustomIconButton(
                          height: 60.adaptSize,
                          width: 60.adaptSize,
                          padding: EdgeInsets.all(18.h),
                          decoration: IconButtonStyleHelper.fillGrayTL8,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgFrame61,
                          ),
                        ),
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
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 89.v,
      leadingWidth: 60.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgShape,
        margin: EdgeInsets.only(
          left: 36.h,
          top: 13.v,
          bottom: 19.v,
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 16.h),
        child: Row(
          children: [
            AppbarTitleImage(
              imagePath: ImageConstant.imgLogout,
              margin: EdgeInsets.only(bottom: 6.v),
            ),
            AppbarTitleIconbutton(
              imagePath: ImageConstant.imgShoppingBagIcon,
              margin: EdgeInsets.only(left: 20.h),
            ),
            AppbarTitleImage(
              imagePath: ImageConstant.imgShoppingBagIconErrorcontainer,
              margin: EdgeInsets.only(
                left: 14.h,
                top: 4.v,
                bottom: 6.v,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
