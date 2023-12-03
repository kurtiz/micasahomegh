import '../notification_page/widgets/yourorder_item_widget.dart';
import 'bloc/notification_bloc.dart';
import 'models/notification_model.dart';
import 'models/yourorder_item_model.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:micasa_home_gh/core/app_export.dart';
import 'package:micasa_home_gh/widgets/app_bar/appbar_leading_image.dart';
import 'package:micasa_home_gh/widgets/app_bar/appbar_subtitle.dart';
import 'package:micasa_home_gh/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<NotificationBloc>(
      create: (context) => NotificationBloc(NotificationState(
        notificationModelObj: NotificationModel(),
      ))
        ..add(NotificationInitialEvent()),
      child: NotificationPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Padding(
          padding: EdgeInsets.only(top: 15.v),
          child: BlocSelector<NotificationBloc, NotificationState,
              NotificationModel?>(
            selector: (state) => state.notificationModelObj,
            builder: (context, notificationModelObj) {
              return GroupedListView<YourorderItemModel, String>(
                shrinkWrap: true,
                stickyHeaderBackgroundColor: Colors.transparent,
                elements: notificationModelObj?.yourorderItemList ?? [],
                groupBy: (element) => element.groupBy!,
                sort: false,
                groupSeparatorBuilder: (String value) {
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 10.v),
                    padding: EdgeInsets.symmetric(
                      horizontal: 19.h,
                      vertical: 4.v,
                    ),
                    decoration: AppDecoration.fillGray100,
                    child: Padding(
                      padding: EdgeInsets.only(top: 9.v),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: state.notificationModelObj?.image,
                            height: 70.adaptSize,
                            width: 70.adaptSize,
                            radius: BorderRadius.circular(
                              6.h,
                            ),
                            margin: EdgeInsets.only(bottom: 5.v),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: 9.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    value,
                                    style: CustomTextStyles.labelLargePrimary
                                        .copyWith(
                                      color: theme.colorScheme.primary,
                                    ),
                                  ),
                                  Container(
                                    height: 52.v,
                                    width: 255.h,
                                    margin: EdgeInsets.only(top: 5.v),
                                    child: Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        Align(
                                          alignment: Alignment.topCenter,
                                          child: SizedBox(
                                            width: 255.h,
                                            child: RichText(
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text:
                                                        "msg_lorem_ipsum_dolor2"
                                                            .tr,
                                                    style: CustomTextStyles
                                                        .bodySmall10,
                                                  ),
                                                  TextSpan(
                                                    text:
                                                        "msg_turpis_pretium_et"
                                                            .tr,
                                                    style: CustomTextStyles
                                                        .bodySmall10,
                                                  ),
                                                ],
                                              ),
                                              textAlign: TextAlign.justify,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomRight,
                                          child: Text(
                                            value,
                                            style: CustomTextStyles
                                                .titleSmallGreen600
                                                .copyWith(
                                              color: appTheme.green600,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                itemBuilder: (context, model) {
                  return YourorderItemWidget(
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
        text: "lbl_notification".tr,
      ),
      styleType: Style.bgFill,
    );
  }
}
