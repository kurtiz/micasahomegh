// ignore_for_file: must_be_immutable

part of 'check_out_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CheckOut widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CheckOutEvent extends Equatable {}

/// Event that is dispatched when the CheckOut widget is first created.
class CheckOutInitialEvent extends CheckOutEvent {
  @override
  List<Object?> get props => [];
}
