import '../home_page/widgets/home1_item_widget.dart';
import '../home_page/widgets/home_item_widget.dart';
import 'bloc/home_bloc.dart';
import 'models/home1_item_model.dart';
import 'models/home_item_model.dart';
import 'models/home_model.dart';
import 'package:flutter/material.dart';
import 'package:micasa_home_gh/core/app_export.dart';
import 'package:micasa_home_gh/widgets/app_bar/appbar_leading_image.dart';
import 'package:micasa_home_gh/widgets/app_bar/appbar_trailing_image.dart';
import 'package:micasa_home_gh/widgets/app_bar/custom_app_bar.dart';
import 'package:micasa_home_gh/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  const HomePage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(HomeState(
        homeModelObj: HomeModel(),
      ))
        ..add(HomeInitialEvent()),
      child: HomePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 8.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHome(context),
              SizedBox(height: 8.v),
              CustomIconButton(
                height: 44.adaptSize,
                width: 44.adaptSize,
                padding: EdgeInsets.all(8.h),
                decoration: IconButtonStyleHelper.fillGray,
                alignment: Alignment.centerRight,
                child: CustomImageView(
                  imagePath: ImageConstant.imgLamp1,
                ),
              ),
              SizedBox(height: 20.v),
              _buildHome1(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 57.v,
      leadingWidth: 44.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgSearch,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 16.v,
          bottom: 15.v,
        ),
      ),
      centerTitle: true,
      title: SizedBox(
        width: 116.h,
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "lbl_make_home".tr,
                style: CustomTextStyles.bodyLargeGelasioGray50001,
              ),
              TextSpan(
                text: "lbl_beautiful".tr,
                style: CustomTextStyles.titleMediumGelasioPrimary,
              ),
            ],
          ),
          textAlign: TextAlign.center,
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgBiCart2,
          margin: EdgeInsets.fromLTRB(20.h, 16.v, 20.h, 15.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildHome(BuildContext context) {
    return SizedBox(
      height: 69.v,
      child: BlocSelector<HomeBloc, HomeState, HomeModel?>(
        selector: (state) => state.homeModelObj,
        builder: (context, homeModelObj) {
          return ListView.separated(
            padding: EdgeInsets.only(
              left: 16.h,
              right: 31.h,
            ),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 18.h,
              );
            },
            itemCount: homeModelObj?.homeItemList.length ?? 0,
            itemBuilder: (context, index) {
              HomeItemModel model =
                  homeModelObj?.homeItemList[index] ?? HomeItemModel();
              return HomeItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildHome1(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: BlocSelector<HomeBloc, HomeState, HomeModel?>(
            selector: (state) => state.homeModelObj,
            builder: (context, homeModelObj) {
              return GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 254.v,
                  crossAxisCount: 2,
                  mainAxisSpacing: 21.h,
                  crossAxisSpacing: 21.h,
                ),
                physics: BouncingScrollPhysics(),
                itemCount: homeModelObj?.home1ItemList.length ?? 0,
                itemBuilder: (context, index) {
                  Home1ItemModel model =
                      homeModelObj?.home1ItemList[index] ?? Home1ItemModel();
                  return Home1ItemWidget(
                    model,
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
