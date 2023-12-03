import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:micasa_home_gh/presentation/review_screen/models/review_model.dart';
part 'review_event.dart';
part 'review_state.dart';

/// A bloc that manages the state of a Review according to the event that is dispatched to it.
class ReviewBloc extends Bloc<ReviewEvent, ReviewState> {
  ReviewBloc(ReviewState initialState) : super(initialState) {
    on<ReviewInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ReviewInitialEvent event,
    Emitter<ReviewState> emit,
  ) async {}
}
