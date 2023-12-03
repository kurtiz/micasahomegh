// ignore_for_file: must_be_immutable

part of 'cart_bloc.dart';

/// Represents the state of Cart in the application.
class CartState extends Equatable {
  CartState({
    this.promoCodeController,
    this.cartModelObj,
  });

  TextEditingController? promoCodeController;

  CartModel? cartModelObj;

  @override
  List<Object?> get props => [
        promoCodeController,
        cartModelObj,
      ];
  CartState copyWith({
    TextEditingController? promoCodeController,
    CartModel? cartModelObj,
  }) {
    return CartState(
      promoCodeController: promoCodeController ?? this.promoCodeController,
      cartModelObj: cartModelObj ?? this.cartModelObj,
    );
  }
}
