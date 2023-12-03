import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:micasa_home_gh/presentation/add_shipping_address_screen/models/add_shipping_address_model.dart';
part 'add_shipping_address_event.dart';
part 'add_shipping_address_state.dart';

/// A bloc that manages the state of a AddShippingAddress according to the event that is dispatched to it.
class AddShippingAddressBloc
    extends Bloc<AddShippingAddressEvent, AddShippingAddressState> {
  AddShippingAddressBloc(AddShippingAddressState initialState)
      : super(initialState) {
    on<AddShippingAddressInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
    on<ChangeDropDown1Event>(_changeDropDown1);
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<AddShippingAddressState> emit,
  ) {
    emit(state.copyWith(selectedDropDownValue: event.value));
  }

  _changeDropDown1(
    ChangeDropDown1Event event,
    Emitter<AddShippingAddressState> emit,
  ) {
    emit(state.copyWith(selectedDropDownValue1: event.value));
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(id: 1, title: "Item One", isSelected: true),
      SelectionPopupModel(id: 2, title: "Item Two"),
      SelectionPopupModel(id: 3, title: "Item Three")
    ];
  }

  List<SelectionPopupModel> fillDropdownItemList1() {
    return [
      SelectionPopupModel(id: 1, title: "Item One", isSelected: true),
      SelectionPopupModel(id: 2, title: "Item Two"),
      SelectionPopupModel(id: 3, title: "Item Three")
    ];
  }

  _onInitialize(
    AddShippingAddressInitialEvent event,
    Emitter<AddShippingAddressState> emit,
  ) async {
    emit(state.copyWith(zipcodeController: TextEditingController()));
    emit(state.copyWith(
        addShippingAddressModelObj: state.addShippingAddressModelObj?.copyWith(
            dropdownItemList: fillDropdownItemList(),
            dropdownItemList1: fillDropdownItemList1())));
  }
}
