import 'bloc/order_tab_container_bloc.dart';
import 'models/order_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:micasa_home_gh/core/app_export.dart';
import 'package:micasa_home_gh/presentation/favorite_page/favorite_page.dart';
import 'package:micasa_home_gh/presentation/home_page/home_page.dart';
import 'package:micasa_home_gh/presentation/notification_page/notification_page.dart';
import 'package:micasa_home_gh/presentation/order_page/order_page.dart';
import 'package:micasa_home_gh/presentation/profile_page/profile_page.dart';
import 'package:micasa_home_gh/widgets/app_bar/appbar_leading_image.dart';
import 'package:micasa_home_gh/widgets/app_bar/appbar_subtitle.dart';
import 'package:micasa_home_gh/widgets/app_bar/custom_app_bar.dart';
import 'package:micasa_home_gh/widgets/custom_bottom_bar.dart';

class OrderTabContainerScreen extends StatefulWidget {
  const OrderTabContainerScreen({Key? key}) : super(key: key);

  @override
  OrderTabContainerScreenState createState() => OrderTabContainerScreenState();

  static Widget builder(BuildContext context) {
    return BlocProvider<OrderTabContainerBloc>(
        create: (context) => OrderTabContainerBloc(OrderTabContainerState(
            orderTabContainerModelObj: OrderTabContainerModel()))
          ..add(OrderTabContainerInitialEvent()),
        child: OrderTabContainerScreen());
  }
}

// ignore_for_file: must_be_immutable
class OrderTabContainerScreenState extends State<OrderTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<OrderTabContainerBloc, OrderTabContainerState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: _buildAppBar(context),
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(children: [
                    SizedBox(height: 18.v),
                    _buildTabview(context),
                    SizedBox(
                        height: 591.v,
                        child: TabBarView(
                            controller: tabviewController,
                            children: [
                              OrderPage.builder(context),
                              OrderPage.builder(context),
                              OrderPage.builder(context)
                            ]))
                  ])),
              bottomNavigationBar: _buildBottomBar(context)));
    });
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
        title: AppbarSubtitle(text: "lbl_my_order".tr),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
        height: 39.v,
        width: 335.h,
        child: TabBar(
            controller: tabviewController,
            labelPadding: EdgeInsets.zero,
            labelColor: theme.colorScheme.primary,
            labelStyle: TextStyle(
                fontSize: 18.fSize,
                fontFamily: 'Nunito Sans',
                fontWeight: FontWeight.w700),
            unselectedLabelColor: appTheme.gray50003,
            unselectedLabelStyle: TextStyle(
                fontSize: 18.fSize,
                fontFamily: 'Nunito Sans',
                fontWeight: FontWeight.w400),
            indicatorColor: theme.colorScheme.primary,
            tabs: [
              Tab(child: Text("lbl_delivered".tr)),
              Tab(child: Text("lbl_processing".tr)),
              Tab(child: Text("lbl_canceled".tr))
            ]));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Clarityhomesolid:
        return AppRoutes.homePage;
      case BottomBarEnum.Marker1:
        return AppRoutes.favoritePage;
      case BottomBarEnum.Bell:
        return AppRoutes.notificationPage;
      case BottomBarEnum.Biperson:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage.builder(context);
      case AppRoutes.favoritePage:
        return FavoritePage.builder(context);
      case AppRoutes.notificationPage:
        return NotificationPage.builder(context);
      case AppRoutes.profilePage:
        return ProfilePage.builder(context);
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
