import 'bloc/congrats_bloc.dart';
import 'models/congrats_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:micasa_home_gh/core/app_export.dart';
import 'package:micasa_home_gh/widgets/custom_elevated_button.dart';
import 'package:micasa_home_gh/widgets/custom_outlined_button.dart';

class CongratsScreen extends StatelessWidget {
  const CongratsScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<CongratsBloc>(
      create: (context) => CongratsBloc(CongratsState(
        congratsModelObj: CongratsModel(),
      ))
        ..add(CongratsInitialEvent()),
      child: CongratsScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<CongratsBloc, CongratsState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(
                left: 30.h,
                top: 71.v,
                right: 30.h,
              ),
              child: Column(
                children: [
                  Text(
                    "lbl_success".tr,
                    style: theme.textTheme.displaySmall,
                  ),
                  SizedBox(height: 27.v),
                  SizedBox(
                    height: 255.v,
                    width: 268.h,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: 230.v,
                            width: 268.h,
                            padding: EdgeInsets.symmetric(
                              horizontal: 33.h,
                              vertical: 24.v,
                            ),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: fs.Svg(
                                  ImageConstant.imgGroup15Gray50,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgGroupErrorcontainer,
                              height: 180.v,
                              width: 200.h,
                              alignment: Alignment.center,
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgCheckmarkCircleFill,
                          height: 50.adaptSize,
                          width: 50.adaptSize,
                          alignment: Alignment.bottomCenter,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 26.v),
                  Container(
                    width: 266.h,
                    margin: EdgeInsets.only(
                      left: 24.h,
                      right: 23.h,
                    ),
                    child: Text(
                      "msg_your_order_will".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.bodyLargeGray700.copyWith(
                        height: 1.50,
                      ),
                    ),
                  ),
                  SizedBox(height: 38.v),
                  CustomElevatedButton(
                    text: "msg_track_your_orders".tr,
                    buttonTextStyle:
                        CustomTextStyles.titleMediumNunitoSansOnErrorContainer,
                  ),
                  SizedBox(height: 25.v),
                  CustomOutlinedButton(
                    text: "lbl_back_to_home".tr,
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
}
