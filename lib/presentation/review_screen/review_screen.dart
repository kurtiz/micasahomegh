import 'bloc/review_bloc.dart';
import 'models/review_model.dart';
import 'package:flutter/material.dart';
import 'package:micasa_home_gh/core/app_export.dart';
import 'package:micasa_home_gh/widgets/app_bar/appbar_leading_image.dart';
import 'package:micasa_home_gh/widgets/app_bar/appbar_subtitle.dart';
import 'package:micasa_home_gh/widgets/app_bar/custom_app_bar.dart';
import 'package:micasa_home_gh/widgets/custom_elevated_button.dart';
import 'package:micasa_home_gh/widgets/custom_rating_bar.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ReviewBloc>(
        create: (context) =>
            ReviewBloc(ReviewState(reviewModelObj: ReviewModel()))
              ..add(ReviewInitialEvent()),
        child: ReviewScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<ReviewBloc, ReviewState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: _buildAppBar(context),
              body: SizedBox(
                  width: mediaQueryData.size.width,
                  child: SingleChildScrollView(
                      padding: EdgeInsets.only(top: 18.v),
                      child: Column(children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 21.h),
                                child: Row(children: [
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.img26818261100x100,
                                      height: 100.adaptSize,
                                      width: 100.adaptSize,
                                      radius: BorderRadius.circular(10.h)),
                                  Padding(
                                      padding: EdgeInsets.only(left: 20.h),
                                      child: Column(children: [
                                        Text("lbl_minimal_stand".tr,
                                            style: CustomTextStyles
                                                .bodyMediumPrimary),
                                        SizedBox(height: 9.v),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgStar1Onprimary,
                                                      height: 20.adaptSize,
                                                      width: 20.adaptSize,
                                                      margin: EdgeInsets.only(
                                                          top: 4.v,
                                                          bottom: 8.v)),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 10.h),
                                                      child: Text("lbl_4_5".tr,
                                                          style: CustomTextStyles
                                                              .headlineSmallNunitoSans))
                                                ])),
                                        SizedBox(height: 13.v),
                                        Text("lbl_10_reviews".tr,
                                            style: CustomTextStyles
                                                .titleMediumNunitoSansSemiBold)
                                      ]))
                                ]))),
                        SizedBox(height: 15.v),
                        Divider(
                            color: appTheme.gray200,
                            indent: 20.h,
                            endIndent: 20.h),
                        SizedBox(height: 15.v),
                        _buildFortySix(context),
                        SizedBox(height: 20.v),
                        _buildFortyFour(context),
                        SizedBox(height: 20.v),
                        _buildWriteAReview(context)
                      ])))));
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
        title: AppbarSubtitle(text: "lbl_rating_review".tr));
  }

  /// Section Widget
  Widget _buildFortySix(BuildContext context) {
    return SizedBox(
        height: 210.v,
        width: 335.h,
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.h, vertical: 18.v),
                  decoration: AppDecoration.outlineBluegray400331
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Padding(
                        padding: EdgeInsets.only(left: 2.h),
                        child: _buildBrunoFernandes(context,
                            brunoFernandes: "lbl_bruno_fernandes".tr,
                            date: "lbl_20_03_2020".tr)),
                    SizedBox(height: 4.v),
                    Padding(
                        padding: EdgeInsets.only(left: 1.h),
                        child: CustomRatingBar(
                            alignment: Alignment.centerLeft, initialRating: 0)),
                    SizedBox(height: 15.v),
                    SizedBox(
                        width: 303.h,
                        child: Text("msg_nice_furniture_with".tr,
                            maxLines: 5,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.justify,
                            style: CustomTextStyles.bodyMediumPrimary))
                  ]))),
          CustomImageView(
              imagePath: ImageConstant.imgEllipse31,
              height: 40.adaptSize,
              width: 40.adaptSize,
              radius: BorderRadius.circular(20.h),
              alignment: Alignment.topCenter)
        ]));
  }

  /// Section Widget
  Widget _buildFortyFour(BuildContext context) {
    return SizedBox(
        height: 210.v,
        width: 335.h,
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.h, vertical: 18.v),
                  decoration: AppDecoration.outlineBluegray400331
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 2.h),
                            child: _buildBrunoFernandes(context,
                                brunoFernandes: "lbl_tracy_mosby".tr,
                                date: "lbl_20_03_2020".tr)),
                        SizedBox(height: 3.v),
                        Padding(
                            padding: EdgeInsets.only(left: 1.h),
                            child: CustomRatingBar(
                                alignment: Alignment.centerLeft,
                                initialRating: 0)),
                        SizedBox(height: 15.v),
                        SizedBox(
                            width: 303.h,
                            child: Text("msg_nice_furniture_with".tr,
                                maxLines: 5,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.justify,
                                style: CustomTextStyles.bodyMediumPrimary))
                      ]))),
          CustomImageView(
              imagePath: ImageConstant.imgEllipse3140x40,
              height: 40.adaptSize,
              width: 40.adaptSize,
              radius: BorderRadius.circular(20.h),
              alignment: Alignment.topCenter)
        ]));
  }

  /// Section Widget
  Widget _buildWriteAReview(BuildContext context) {
    return SizedBox(
        height: 210.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.center,
              child: SizedBox(
                  height: 210.v,
                  width: 335.h,
                  child: Stack(alignment: Alignment.topCenter, children: [
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.h, vertical: 19.v),
                            decoration: AppDecoration.outlineBluegray400331
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder6),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(left: 2.h),
                                      child: _buildBrunoFernandes(context,
                                          brunoFernandes:
                                              "lbl_bruno_fernandes".tr,
                                          date: "lbl_20_03_2020".tr)),
                                  SizedBox(height: 4.v),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: EdgeInsets.only(left: 1.h),
                                          child: Row(children: [
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgStar1Onprimary,
                                                height: 16.adaptSize,
                                                width: 16.adaptSize),
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgStar1Onprimary,
                                                height: 16.adaptSize,
                                                width: 16.adaptSize,
                                                margin:
                                                    EdgeInsets.only(left: 5.h)),
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgStar1Onprimary,
                                                height: 16.adaptSize,
                                                width: 16.adaptSize,
                                                margin:
                                                    EdgeInsets.only(left: 5.h)),
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgStar1Onprimary,
                                                height: 16.adaptSize,
                                                width: 16.adaptSize,
                                                margin:
                                                    EdgeInsets.only(left: 5.h)),
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgStar1Onprimary,
                                                height: 16.adaptSize,
                                                width: 16.adaptSize,
                                                margin:
                                                    EdgeInsets.only(left: 5.h))
                                          ]))),
                                  SizedBox(height: 16.v),
                                  Text("msg_nice_furniture_with".tr,
                                      textAlign: TextAlign.justify,
                                      style:
                                          CustomTextStyles.bodyMediumPrimary),
                                  SizedBox(height: 74.v)
                                ]))),
                    CustomImageView(
                        imagePath: ImageConstant.imgEllipse311,
                        height: 40.adaptSize,
                        width: 40.adaptSize,
                        radius: BorderRadius.circular(20.h),
                        alignment: Alignment.topCenter)
                  ]))),
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  margin: EdgeInsets.only(top: 14.v),
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.h, vertical: 15.v),
                  decoration:
                      AppDecoration.gradientOnErrorContainerToOnErrorContainer,
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    SizedBox(height: 20.v),
                    CustomElevatedButton(
                        height: 50.v,
                        text: "lbl_write_a_review".tr,
                        buttonTextStyle: CustomTextStyles
                            .titleMediumNunitoSansOnErrorContainer)
                  ])))
        ]));
  }

  /// Common widget
  Widget _buildBrunoFernandes(
    BuildContext context, {
    required String brunoFernandes,
    required String date,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(brunoFernandes,
          style: theme.textTheme.titleSmall!
              .copyWith(color: theme.colorScheme.primary)),
      Padding(
          padding: EdgeInsets.only(bottom: 2.v),
          child: Text(date,
              style: theme.textTheme.bodySmall!
                  .copyWith(color: theme.colorScheme.primaryContainer)))
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
