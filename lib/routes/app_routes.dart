import 'package:flutter/material.dart';
import 'package:micasa_home_gh/presentation/boarding_screen/boarding_screen.dart';
import 'package:micasa_home_gh/presentation/log_in_screen/log_in_screen.dart';
import 'package:micasa_home_gh/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:micasa_home_gh/presentation/home_container_screen/home_container_screen.dart';
import 'package:micasa_home_gh/presentation/product_screen/product_screen.dart';
import 'package:micasa_home_gh/presentation/cart_screen/cart_screen.dart';
import 'package:micasa_home_gh/presentation/check_out_screen/check_out_screen.dart';
import 'package:micasa_home_gh/presentation/congrats_screen/congrats_screen.dart';
import 'package:micasa_home_gh/presentation/review_screen/review_screen.dart';
import 'package:micasa_home_gh/presentation/icon_screen/icon_screen.dart';
import 'package:micasa_home_gh/presentation/order_tab_container_screen/order_tab_container_screen.dart';
import 'package:micasa_home_gh/presentation/shipping_address_screen/shipping_address_screen.dart';
import 'package:micasa_home_gh/presentation/payment_method_screen/payment_method_screen.dart';
import 'package:micasa_home_gh/presentation/my_reviews_screen/my_reviews_screen.dart';
import 'package:micasa_home_gh/presentation/add_shipping_address_screen/add_shipping_address_screen.dart';
import 'package:micasa_home_gh/presentation/add_payment_screen/add_payment_screen.dart';
import 'package:micasa_home_gh/presentation/setting_screen/setting_screen.dart';
import 'package:micasa_home_gh/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String boardingScreen = '/boarding_screen';

  static const String logInScreen = '/log_in_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String productScreen = '/product_screen';

  static const String favoritePage = '/favorite_page';

  static const String cartScreen = '/cart_screen';

  static const String checkOutScreen = '/check_out_screen';

  static const String notificationPage = '/notification_page';

  static const String congratsScreen = '/congrats_screen';

  static const String reviewScreen = '/review_screen';

  static const String iconScreen = '/icon_screen';

  static const String profilePage = '/profile_page';

  static const String orderPage = '/order_page';

  static const String orderTabContainerScreen = '/order_tab_container_screen';

  static const String shippingAddressScreen = '/shipping_address_screen';

  static const String paymentMethodScreen = '/payment_method_screen';

  static const String myReviewsScreen = '/my_reviews_screen';

  static const String addShippingAddressScreen = '/add_shipping_address_screen';

  static const String addPaymentScreen = '/add_payment_screen';

  static const String settingScreen = '/setting_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        boardingScreen: BoardingScreen.builder,
        logInScreen: LogInScreen.builder,
        signUpScreen: SignUpScreen.builder,
        homeContainerScreen: HomeContainerScreen.builder,
        productScreen: ProductScreen.builder,
        cartScreen: CartScreen.builder,
        checkOutScreen: CheckOutScreen.builder,
        congratsScreen: CongratsScreen.builder,
        reviewScreen: ReviewScreen.builder,
        iconScreen: IconScreen.builder,
        orderTabContainerScreen: OrderTabContainerScreen.builder,
        shippingAddressScreen: ShippingAddressScreen.builder,
        paymentMethodScreen: PaymentMethodScreen.builder,
        myReviewsScreen: MyReviewsScreen.builder,
        addShippingAddressScreen: AddShippingAddressScreen.builder,
        addPaymentScreen: AddPaymentScreen.builder,
        settingScreen: SettingScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: BoardingScreen.builder
      };
}
