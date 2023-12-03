import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:micasa_home_gh/presentation/check_out_screen/models/check_out_model.dart';
part 'check_out_event.dart';
part 'check_out_state.dart';

/// A bloc that manages the state of a CheckOut according to the event that is dispatched to it.
class CheckOutBloc extends Bloc<CheckOutEvent, CheckOutState> {
  CheckOutBloc(CheckOutState initialState) : super(initialState) {
    on<CheckOutInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CheckOutInitialEvent event,
    Emitter<CheckOutState> emit,
  ) async {
    emit(state.copyWith(
        mastercardController: TextEditingController(),
        durationController: TextEditingController()));
  }
}
