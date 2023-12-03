import 'bloc/boarding_bloc.dart';
import 'models/boarding_model.dart';
import 'package:flutter/material.dart';
import 'package:micasa_home_gh/core/app_export.dart';
import 'package:micasa_home_gh/widgets/custom_elevated_button.dart';

class BoardingScreen extends StatelessWidget {
  const BoardingScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<BoardingBloc>(
        create: (context) =>
            BoardingBloc(BoardingState(boardingModelObj: BoardingModel()))
              ..add(BoardingInitialEvent()),
        child: BoardingScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<BoardingBloc, BoardingState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              extendBody: true,
              extendBodyBehindAppBar: true,
              body: Container(
                  width: mediaQueryData.size.width,
                  height: mediaQueryData.size.height,
                  decoration: BoxDecoration(
                      color: theme.colorScheme.onErrorContainer.withOpacity(1),
                      image: DecorationImage(
                          image: AssetImage(ImageConstant.imgBoarding),
                          fit: BoxFit.cover)),
                  child: Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(
                          horizontal: 30.h, vertical: 150.v),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 79.v),
                            Text("lbl_make_your".tr,
                                style: CustomTextStyles.headlineSmallGray700),
                            SizedBox(height: 13.v),
                            Text("lbl_home_beautiful".tr,
                                style: CustomTextStyles
                                    .headlineLargeGelasioErrorContainer),
                            SizedBox(height: 41.v),
                            Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                    width: 286.h,
                                    margin: EdgeInsets.only(left: 29.h),
                                    child: Text("msg_the_best_simple".tr,
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.justify,
                                        style: CustomTextStyles
                                            .bodyLargePrimaryContainer
                                            .copyWith(height: 1.94)))),
                            Spacer(),
                            CustomElevatedButton(
                                height: 54.v,
                                width: 159.h,
                                text: "lbl_get_started".tr,
                                buttonStyle:
                                    CustomButtonStyles.outlineErrorContainer,
                                buttonTextStyle: CustomTextStyles
                                    .titleMediumGelasioOnErrorContainer,
                                alignment: Alignment.center)
                          ])))));
    });
  }
}
