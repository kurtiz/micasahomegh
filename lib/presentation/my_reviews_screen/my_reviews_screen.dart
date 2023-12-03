import '../my_reviews_screen/widgets/myreviews_item_widget.dart';
import 'bloc/my_reviews_bloc.dart';
import 'models/my_reviews_model.dart';
import 'models/myreviews_item_model.dart';
import 'package:flutter/material.dart';
import 'package:micasa_home_gh/core/app_export.dart';
import 'package:micasa_home_gh/widgets/app_bar/appbar_leading_image.dart';
import 'package:micasa_home_gh/widgets/app_bar/appbar_subtitle.dart';
import 'package:micasa_home_gh/widgets/app_bar/appbar_trailing_image.dart';
import 'package:micasa_home_gh/widgets/app_bar/custom_app_bar.dart';

class MyReviewsScreen extends StatelessWidget {
  const MyReviewsScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<MyReviewsBloc>(
        create: (context) =>
            MyReviewsBloc(MyReviewsState(myReviewsModelObj: MyReviewsModel()))
              ..add(MyReviewsInitialEvent()),
        child: MyReviewsScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Padding(
                padding: EdgeInsets.only(left: 20.h, top: 17.v, right: 20.h),
                child: BlocSelector<MyReviewsBloc, MyReviewsState,
                        MyReviewsModel?>(
                    selector: (state) => state.myReviewsModelObj,
                    builder: (context, myReviewsModelObj) {
                      return ListView.separated(
                          physics: BouncingScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return SizedBox(height: 20.v);
                          },
                          itemCount:
                              myReviewsModelObj?.myreviewsItemList.length ?? 0,
                          itemBuilder: (context, index) {
                            MyreviewsItemModel model =
                                myReviewsModelObj?.myreviewsItemList[index] ??
                                    MyreviewsItemModel();
                            return MyreviewsItemWidget(model);
                          });
                    }))));
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
        title: AppbarSubtitle(text: "lbl_my_reviews".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgSearchPrimary,
              margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 12.v))
        ],
        styleType: Style.bgFill);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
