import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:micasa_home_gh/presentation/shipping_address_screen/models/shipping_address_model.dart';
part 'shipping_address_event.dart';
part 'shipping_address_state.dart';

/// A bloc that manages the state of a ShippingAddress according to the event that is dispatched to it.
class ShippingAddressBloc
    extends Bloc<ShippingAddressEvent, ShippingAddressState> {
  ShippingAddressBloc(ShippingAddressState initialState) : super(initialState) {
    on<ShippingAddressInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
    on<ChangeCheckBox1Event>(_changeCheckBox1);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<ShippingAddressState> emit,
  ) {
    emit(state.copyWith(checkboxon: event.value));
  }

  _changeCheckBox1(
    ChangeCheckBox1Event event,
    Emitter<ShippingAddressState> emit,
  ) {
    emit(state.copyWith(checkboxon1: event.value));
  }

  _onInitialize(
    ShippingAddressInitialEvent event,
    Emitter<ShippingAddressState> emit,
  ) async {
    emit(state.copyWith(checkboxon: false, checkboxon1: false));
  }
}
