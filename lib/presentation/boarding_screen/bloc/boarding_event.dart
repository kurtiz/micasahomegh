// ignore_for_file: must_be_immutable

part of 'boarding_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Boarding widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BoardingEvent extends Equatable {}

/// Event that is dispatched when the Boarding widget is first created.
class BoardingInitialEvent extends BoardingEvent {
  @override
  List<Object?> get props => [];
}
