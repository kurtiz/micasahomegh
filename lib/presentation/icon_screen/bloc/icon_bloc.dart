import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:micasa_home_gh/presentation/icon_screen/models/icon_model.dart';
part 'icon_event.dart';
part 'icon_state.dart';

/// A bloc that manages the state of a Icon according to the event that is dispatched to it.
class IconBloc extends Bloc<IconEvent, IconState> {
  IconBloc(IconState initialState) : super(initialState) {
    on<IconInitialEvent>(_onInitialize);
  }

  _onInitialize(
    IconInitialEvent event,
    Emitter<IconState> emit,
  ) async {}
}
