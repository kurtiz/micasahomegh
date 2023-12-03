import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:micasa_home_gh/presentation/boarding_screen/models/boarding_model.dart';
part 'boarding_event.dart';
part 'boarding_state.dart';

/// A bloc that manages the state of a Boarding according to the event that is dispatched to it.
class BoardingBloc extends Bloc<BoardingEvent, BoardingState> {
  BoardingBloc(BoardingState initialState) : super(initialState) {
    on<BoardingInitialEvent>(_onInitialize);
  }

  _onInitialize(
    BoardingInitialEvent event,
    Emitter<BoardingState> emit,
  ) async {
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.logInScreen,
      );
    });
  }
}
