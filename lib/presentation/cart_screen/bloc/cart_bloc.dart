import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/cart_item_model.dart';
import 'package:micasa_home_gh/presentation/cart_screen/models/cart_model.dart';
part 'cart_event.dart';
part 'cart_state.dart';

/// A bloc that manages the state of a Cart according to the event that is dispatched to it.
class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc(CartState initialState) : super(initialState) {
    on<CartInitialEvent>(_onInitialize);
  }

  List<CartItemModel> fillCartItemList() {
    return [
      CartItemModel(
          minimalStand: ImageConstant.img26818261100x100,
          minimalStand1: "Minimal Stand",
          price: " 25.00",
          iconButton: ImageConstant.imgGroup15,
          one: "01"),
      CartItemModel(minimalStand: ImageConstant.imgNathanDumlaoG),
      CartItemModel(minimalStand: ImageConstant.img396890111)
    ];
  }

  _onInitialize(
    CartInitialEvent event,
    Emitter<CartState> emit,
  ) async {
    emit(state.copyWith(promoCodeController: TextEditingController()));
    emit(state.copyWith(
        cartModelObj:
            state.cartModelObj?.copyWith(cartItemList: fillCartItemList())));
  }
}
