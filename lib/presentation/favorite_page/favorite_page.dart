import '../favorite_page/widgets/favorite_item_widget.dart';
import 'bloc/favorite_bloc.dart';
import 'models/favorite_item_model.dart';
import 'models/favorite_model.dart';
import 'package:flutter/material.dart';
import 'package:micasa_home_gh/core/app_export.dart';
import 'package:micasa_home_gh/widgets/app_bar/appbar_leading_image.dart';
import 'package:micasa_home_gh/widgets/app_bar/appbar_subtitle.dart';
import 'package:micasa_home_gh/widgets/app_bar/appbar_trailing_image.dart';
import 'package:micasa_home_gh/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FavoriteBloc>(
      create: (context) => FavoriteBloc(FavoriteState(
        favoriteModelObj: FavoriteModel(),
      ))
        ..add(FavoriteInitialEvent()),
      child: FavoritePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Padding(
          padding: EdgeInsets.only(
            left: 20.h,
            top: 17.v,
            right: 20.h,
          ),
          child: BlocSelector<FavoriteBloc, FavoriteState, FavoriteModel?>(
            selector: (state) => state.favoriteModelObj,
            builder: (context, favoriteModelObj) {
              return ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (
                  context,
                  index,
                ) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 12.0.v),
                    child: SizedBox(
                      width: 335.h,
                      child: Divider(
                        height: 1.v,
                        thickness: 1.v,
                        color: appTheme.gray200,
                      ),
                    ),
                  );
                },
                itemCount: favoriteModelObj?.favoriteItemList.length ?? 0,
                itemBuilder: (context, index) {
                  FavoriteItemModel model =
                      favoriteModelObj?.favoriteItemList[index] ??
                          FavoriteItemModel();
                  return FavoriteItemWidget(
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

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 36.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgSearchPrimary,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 12.v,
          bottom: 12.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_favorites".tr,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgFrame15Primary,
          margin: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 12.v,
          ),
        ),
      ],
    );
  }
}
