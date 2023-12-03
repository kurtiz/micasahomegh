import 'bloc/add_shipping_address_bloc.dart';
import 'models/add_shipping_address_model.dart';
import 'package:flutter/material.dart';
import 'package:micasa_home_gh/core/app_export.dart';
import 'package:micasa_home_gh/core/utils/validation_functions.dart';
import 'package:micasa_home_gh/widgets/app_bar/appbar_leading_image.dart';
import 'package:micasa_home_gh/widgets/app_bar/appbar_subtitle.dart';
import 'package:micasa_home_gh/widgets/app_bar/custom_app_bar.dart';
import 'package:micasa_home_gh/widgets/custom_drop_down.dart';
import 'package:micasa_home_gh/widgets/custom_elevated_button.dart';
import 'package:micasa_home_gh/widgets/custom_floating_text_field.dart';

// ignore_for_file: must_be_immutable
class AddShippingAddressScreen extends StatelessWidget {
  AddShippingAddressScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<AddShippingAddressBloc>(
        create: (context) => AddShippingAddressBloc(AddShippingAddressState(
            addShippingAddressModelObj: AddShippingAddressModel()))
          ..add(AddShippingAddressInitialEvent()),
        child: AddShippingAddressScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.h, vertical: 27.v),
                    child: Column(children: [
                      _buildComponentTwenty(context),
                      SizedBox(height: 20.v),
                      _buildComponentTwenty(context),
                      SizedBox(height: 20.v),
                      BlocSelector<AddShippingAddressBloc,
                              AddShippingAddressState, TextEditingController?>(
                          selector: (state) => state.zipcodeController,
                          builder: (context, zipcodeController) {
                            return CustomFloatingTextField(
                                controller: zipcodeController,
                                labelText: "msg_zipcode_postal".tr,
                                labelStyle: CustomTextStyles
                                    .titleMediumNunitoSansPrimarySemiBold_3,
                                hintText: "msg_zipcode_postal".tr,
                                textInputAction: TextInputAction.done,
                                textInputType: TextInputType.number,
                                validator: (value) {
                                  if (!isNumeric(value)) {
                                    return "err_msg_please_enter_valid_number"
                                        .tr;
                                  }
                                  return null;
                                });
                          }),
                      SizedBox(height: 20.v),
                      BlocSelector<
                              AddShippingAddressBloc,
                              AddShippingAddressState,
                              AddShippingAddressModel?>(
                          selector: (state) => state.addShippingAddressModelObj,
                          builder: (context, addShippingAddressModelObj) {
                            return CustomDropDown(
                                hintText: "lbl_country".tr,
                                items: addShippingAddressModelObj
                                        ?.dropdownItemList ??
                                    [],
                                onChanged: (value) {
                                  context
                                      .read<AddShippingAddressBloc>()
                                      .add(ChangeDropDownEvent(value: value));
                                });
                          }),
                      SizedBox(height: 20.v),
                      _buildComponentTwenty(context),
                      SizedBox(height: 20.v),
                      BlocSelector<
                              AddShippingAddressBloc,
                              AddShippingAddressState,
                              AddShippingAddressModel?>(
                          selector: (state) => state.addShippingAddressModelObj,
                          builder: (context, addShippingAddressModelObj) {
                            return CustomDropDown(
                                hintText: "lbl_district".tr,
                                items: addShippingAddressModelObj
                                        ?.dropdownItemList1 ??
                                    [],
                                onChanged: (value) {
                                  context
                                      .read<AddShippingAddressBloc>()
                                      .add(ChangeDropDown1Event(value: value));
                                });
                          }),
                      SizedBox(height: 5.v)
                    ]))),
            bottomNavigationBar: _buildSAVEADDRESS(context)));
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
        title: AppbarSubtitle(text: "msg_add_shipping_address".tr),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildSAVEADDRESS(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_save_address".tr,
        margin: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 35.v));
  }

  /// Common widget
  Widget _buildComponentTwenty(BuildContext context) {
    return Container(
        width: 335.h,
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 9.v),
        decoration: AppDecoration.fillGray100
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("lbl_address".tr, style: theme.textTheme.bodySmall),
              SizedBox(height: 7.v),
              Text("msg_ex_25_robert_latouche".tr,
                  style: CustomTextStyles.titleMediumNunitoSansGray400),
              SizedBox(height: 1.v)
            ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
