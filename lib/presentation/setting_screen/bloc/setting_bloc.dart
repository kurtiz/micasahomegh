import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:micasa_home_gh/presentation/setting_screen/models/setting_model.dart';
part 'setting_event.dart';
part 'setting_state.dart';

/// A bloc that manages the state of a Setting according to the event that is dispatched to it.
class SettingBloc extends Bloc<SettingEvent, SettingState> {
  SettingBloc(SettingState initialState) : super(initialState) {
    on<SettingInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
    on<ChangeSwitch1Event>(_changeSwitch1);
    on<ChangeSwitch2Event>(_changeSwitch2);
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<SettingState> emit,
  ) {
    emit(state.copyWith(isSelectedSwitch: event.value));
  }

  _changeSwitch1(
    ChangeSwitch1Event event,
    Emitter<SettingState> emit,
  ) {
    emit(state.copyWith(isSelectedSwitch1: event.value));
  }

  _changeSwitch2(
    ChangeSwitch2Event event,
    Emitter<SettingState> emit,
  ) {
    emit(state.copyWith(isSelectedSwitch2: event.value));
  }

  _onInitialize(
    SettingInitialEvent event,
    Emitter<SettingState> emit,
  ) async {
    emit(state.copyWith(
        nameController: TextEditingController(),
        emailController: TextEditingController(),
        passwordController: TextEditingController(),
        fAQController: TextEditingController(),
        fAQController1: TextEditingController(),
        isSelectedSwitch: false,
        isSelectedSwitch1: false,
        isSelectedSwitch2: false));
  }
}
