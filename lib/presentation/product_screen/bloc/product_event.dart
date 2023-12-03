// ignore_for_file: must_be_immutable

part of 'product_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Product widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProductEvent extends Equatable {}

/// Event that is dispatched when the Product widget is first created.
class ProductInitialEvent extends ProductEvent {
  @override
  List<Object?> get props => [];
}
