// ignore_for_file: must_be_immutable

part of 'add_shipping_address_bloc.dart';

/// Represents the state of AddShippingAddress in the application.
class AddShippingAddressState extends Equatable {
  AddShippingAddressState({
    this.zipcodeController,
    this.selectedDropDownValue,
    this.selectedDropDownValue1,
    this.addShippingAddressModelObj,
  });

  TextEditingController? zipcodeController;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  AddShippingAddressModel? addShippingAddressModelObj;

  @override
  List<Object?> get props => [
        zipcodeController,
        selectedDropDownValue,
        selectedDropDownValue1,
        addShippingAddressModelObj,
      ];
  AddShippingAddressState copyWith({
    TextEditingController? zipcodeController,
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    AddShippingAddressModel? addShippingAddressModelObj,
  }) {
    return AddShippingAddressState(
      zipcodeController: zipcodeController ?? this.zipcodeController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
          selectedDropDownValue1 ?? this.selectedDropDownValue1,
      addShippingAddressModelObj:
          addShippingAddressModelObj ?? this.addShippingAddressModelObj,
    );
  }
}
