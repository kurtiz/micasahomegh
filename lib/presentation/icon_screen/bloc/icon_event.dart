// ignore_for_file: must_be_immutable

part of 'icon_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Icon widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class IconEvent extends Equatable {}

/// Event that is dispatched when the Icon widget is first created.
class IconInitialEvent extends IconEvent {
  @override
  List<Object?> get props => [];
}
