// ignore_for_file: must_be_immutable

part of 'my_reviews_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyReviews widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyReviewsEvent extends Equatable {}

/// Event that is dispatched when the MyReviews widget is first created.
class MyReviewsInitialEvent extends MyReviewsEvent {
  @override
  List<Object?> get props => [];
}
