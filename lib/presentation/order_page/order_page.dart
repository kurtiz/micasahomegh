import '../order_page/widgets/order_item_widget.dart';
import 'bloc/order_bloc.dart';
import 'models/order_item_model.dart';
import 'models/order_model.dart';
import 'package:flutter/material.dart';
import 'package:micasa_home_gh/core/app_export.dart';

// ignore_for_file: must_be_immutable
class OrderPage extends StatefulWidget {
  const OrderPage({Key? key})
      : super(
          key: key,
        );

  @override
  OrderPageState createState() => OrderPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<OrderBloc>(
      create: (context) => OrderBloc(OrderState(
        orderModelObj: OrderModel(),
      ))
        ..add(OrderInitialEvent()),
      child: OrderPage(),
    );
  }
}

class OrderPageState extends State<OrderPage>
    with AutomaticKeepAliveClientMixin<OrderPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.white,
          child: Column(
            children: [
              SizedBox(height: 25.v),
              _buildOrder(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOrder(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: BlocSelector<OrderBloc, OrderState, OrderModel?>(
          selector: (state) => state.orderModelObj,
          builder: (context, orderModelObj) {
            return ListView.separated(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 25.v,
                );
              },
              itemCount: orderModelObj?.orderItemList.length ?? 0,
              itemBuilder: (context, index) {
                OrderItemModel model =
                    orderModelObj?.orderItemList[index] ?? OrderItemModel();
                return OrderItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
