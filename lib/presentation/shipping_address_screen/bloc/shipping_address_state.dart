// ignore_for_file: must_be_immutable

part of 'shipping_address_bloc.dart';

/// Represents the state of ShippingAddress in the application.
class ShippingAddressState extends Equatable {
  ShippingAddressState({
    this.checkboxon = false,
    this.checkboxon1 = false,
    this.shippingAddressModelObj,
  });

  ShippingAddressModel? shippingAddressModelObj;

  bool checkboxon;

  bool checkboxon1;

  @override
  List<Object?> get props => [
        checkboxon,
        checkboxon1,
        shippingAddressModelObj,
      ];
  ShippingAddressState copyWith({
    bool? checkboxon,
    bool? checkboxon1,
    ShippingAddressModel? shippingAddressModelObj,
  }) {
    return ShippingAddressState(
      checkboxon: checkboxon ?? this.checkboxon,
      checkboxon1: checkboxon1 ?? this.checkboxon1,
      shippingAddressModelObj:
          shippingAddressModelObj ?? this.shippingAddressModelObj,
    );
  }
}
