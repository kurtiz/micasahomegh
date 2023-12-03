import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:micasa_home_gh/presentation/congrats_screen/models/congrats_model.dart';
part 'congrats_event.dart';
part 'congrats_state.dart';

/// A bloc that manages the state of a Congrats according to the event that is dispatched to it.
class CongratsBloc extends Bloc<CongratsEvent, CongratsState> {
  CongratsBloc(CongratsState initialState) : super(initialState) {
    on<CongratsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CongratsInitialEvent event,
    Emitter<CongratsState> emit,
  ) async {}
}
