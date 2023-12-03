import '../cart_screen/widgets/cart_item_widget.dart';
import 'bloc/cart_bloc.dart';
import 'models/cart_item_model.dart';
import 'models/cart_model.dart';
import 'package:flutter/material.dart';
import 'package:micasa_home_gh/core/app_export.dart';
import 'package:micasa_home_gh/widgets/app_bar/appbar_leading_image.dart';
import 'package:micasa_home_gh/widgets/app_bar/appbar_subtitle.dart';
import 'package:micasa_home_gh/widgets/app_bar/custom_app_bar.dart';
import 'package:micasa_home_gh/widgets/custom_elevated_button.dart';
import 'package:micasa_home_gh/widgets/custom_text_form_field.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<CartBloc>(
        create: (context) => CartBloc(CartState(cartModelObj: CartModel()))
          ..add(CartInitialEvent()),
        child: CartScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 13.v),
                child: Column(children: [
                  _buildCart(context),
                  Spacer(),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.h),
                      child: BlocSelector<CartBloc, CartState,
                              TextEditingController?>(
                          selector: (state) => state.promoCodeController,
                          builder: (context, promoCodeController) {
                            return CustomTextFormField(
                                controller: promoCodeController,
                                hintText: "msg_enter_your_promo".tr,
                                textInputAction: TextInputAction.done,
                                borderDecoration:
                                    TextFormFieldStyleHelper.outlineBlueGray,
                                filled: true,
                                fillColor: theme.colorScheme.onErrorContainer
                                    .withOpacity(1));
                          })),
                  SizedBox(height: 18.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("lbl_total".tr,
                                style: CustomTextStyles
                                    .titleLargePrimaryContainer),
                            Text("lbl_95_00".tr,
                                style:
                                    CustomTextStyles.titleLargeErrorContainer)
                          ])),
                  SizedBox(height: 6.v)
                ])),
            bottomNavigationBar: _buildCheckOut(context)));
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
        title: AppbarSubtitle(text: "lbl_my_cart".tr),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildCart(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 5.h),
        child: BlocSelector<CartBloc, CartState, CartModel?>(
            selector: (state) => state.cartModelObj,
            builder: (context, cartModelObj) {
              return ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return Padding(
                        padding: EdgeInsets.symmetric(vertical: 12.0.v),
                        child: SizedBox(
                            width: 335.h,
                            child: Divider(
                                height: 1.v,
                                thickness: 1.v,
                                color: appTheme.gray200)));
                  },
                  itemCount: cartModelObj?.cartItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    CartItemModel model =
                        cartModelObj?.cartItemList[index] ?? CartItemModel();
                    return CartItemWidget(model);
                  });
            }));
  }

  /// Section Widget
  Widget _buildCheckOut(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_check_out".tr,
        margin: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 30.v));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
