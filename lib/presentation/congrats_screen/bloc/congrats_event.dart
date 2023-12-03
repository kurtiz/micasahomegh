// ignore_for_file: must_be_immutable

part of 'congrats_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Congrats widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CongratsEvent extends Equatable {}

/// Event that is dispatched when the Congrats widget is first created.
class CongratsInitialEvent extends CongratsEvent {
  @override
  List<Object?> get props => [];
}
