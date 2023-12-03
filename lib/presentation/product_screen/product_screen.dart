import 'bloc/product_bloc.dart';
import 'models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:micasa_home_gh/core/app_export.dart';
import 'package:micasa_home_gh/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:micasa_home_gh/widgets/app_bar/custom_app_bar.dart';
import 'package:micasa_home_gh/widgets/custom_elevated_button.dart';
import 'package:micasa_home_gh/widgets/custom_icon_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ProductBloc>(
        create: (context) =>
            ProductBloc(ProductState(productModelObj: ProductModel()))
              ..add(ProductInitialEvent()),
        child: ProductScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<ProductBloc, ProductState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: 355.h,
                  margin: EdgeInsets.only(left: 20.h),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            height: 411.v,
                            width: 355.h,
                            child: Stack(
                                alignment: Alignment.centerLeft,
                                children: [
                                  Align(
                                      alignment: Alignment.centerRight,
                                      child: SizedBox(
                                          height: 411.v,
                                          width: 323.h,
                                          child: Stack(
                                              alignment: Alignment.bottomRight,
                                              children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .img26818261411x323,
                                                    height: 411.v,
                                                    width: 323.h,
                                                    radius: BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                                50.h)),
                                                    alignment:
                                                        Alignment.center),
                                                Align(
                                                    alignment:
                                                        Alignment.bottomRight,
                                                    child: Container(
                                                        height: 4.v,
                                                        margin: EdgeInsets.only(
                                                            right: 50.h,
                                                            bottom: 30.v),
                                                        child: AnimatedSmoothIndicator(
                                                            activeIndex: 0,
                                                            count: 3,
                                                            effect: ScrollingDotsEffect(
                                                                spacing: 10,
                                                                activeDotColor: theme
                                                                    .colorScheme
                                                                    .errorContainer,
                                                                dotColor:
                                                                    appTheme
                                                                        .gray200,
                                                                dotHeight: 4.v,
                                                                dotWidth:
                                                                    15.h))))
                                              ]))),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                          height: 192.v,
                                          width: 64.h,
                                          padding: EdgeInsets.all(15.h),
                                          decoration: AppDecoration
                                              .outlineBluegray40033
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder32),
                                          child: CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgFrame5,
                                              height: 162.v,
                                              width: 34.h,
                                              alignment: Alignment.center))),
                                  _buildAppBar(context)
                                ])),
                        SizedBox(height: 22.v),
                        Padding(
                            padding: EdgeInsets.only(left: 5.h),
                            child: Text("lbl_minimal_stand".tr,
                                style: theme.textTheme.headlineSmall)),
                        SizedBox(height: 10.v),
                        _buildPrice(context),
                        SizedBox(height: 10.v),
                        Padding(
                            padding: EdgeInsets.only(left: 5.h),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgStar1Onprimary,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize,
                                  margin:
                                      EdgeInsets.only(top: 1.v, bottom: 3.v)),
                              Padding(
                                  padding: EdgeInsets.only(left: 10.h),
                                  child: Text("lbl_4_5".tr,
                                      style: CustomTextStyles
                                          .titleMediumNunitoSans)),
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: 20.h, top: 4.v),
                                  child: Text("lbl_50_reviews".tr,
                                      style: CustomTextStyles
                                          .titleSmallPrimaryContainer_1))
                            ])),
                        SizedBox(height: 11.v),
                        Container(
                            width: 325.h,
                            margin: EdgeInsets.only(left: 5.h, right: 25.h),
                            child: Text("msg_minimal_stand_is".tr,
                                maxLines: 5,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.justify,
                                style: CustomTextStyles.bodyMediumGray700))
                      ])),
              bottomNavigationBar: _buildFrameSixtyTwo(context)));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 49.v,
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 32.h, right: 303.h),
            onTap: () {
              onTapArrowLeft(context);
            }));
  }

  /// Section Widget
  Widget _buildPrice(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 5.h, right: 25.h),
        child: Row(children: [
          Text("lbl_50".tr,
              style: CustomTextStyles.headlineLargeNunitoSansErrorContainer),
          Container(
              width: 113.h,
              margin: EdgeInsets.only(left: 149.h, top: 7.v, bottom: 3.v),
              child: Row(children: [
                CustomIconButton(
                    height: 30.adaptSize,
                    width: 30.adaptSize,
                    padding: EdgeInsets.all(8.h),
                    decoration: IconButtonStyleHelper.fillGrayTL61,
                    child:
                        CustomImageView(imagePath: ImageConstant.imgGroup15)),
                Padding(
                    padding: EdgeInsets.only(left: 15.h, bottom: 3.v),
                    child: Text("lbl_01".tr,
                        style: CustomTextStyles
                            .titleMediumNunitoSansPrimarySemiBold18)),
                Container(
                    margin: EdgeInsets.only(left: 15.h),
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.h, vertical: 14.v),
                    decoration: AppDecoration.fillGray.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder6),
                    child: Container(
                        height: 2.v,
                        width: 14.h,
                        decoration: BoxDecoration(
                            color: theme.colorScheme.primary,
                            borderRadius: BorderRadius.circular(1.h))))
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildFrameSixtyTwo(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 25.h, right: 25.h, bottom: 30.v),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomIconButton(
              height: 60.adaptSize,
              width: 60.adaptSize,
              padding: EdgeInsets.all(18.h),
              decoration: IconButtonStyleHelper.fillGrayTL8,
              child: CustomImageView(imagePath: ImageConstant.imgFrame61)),
          Expanded(
              child: CustomElevatedButton(
                  text: "lbl_add_to_cart".tr,
                  margin: EdgeInsets.only(left: 15.h)))
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
