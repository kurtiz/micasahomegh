// ignore_for_file: must_be_immutable

part of 'shipping_address_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ShippingAddress widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ShippingAddressEvent extends Equatable {}

/// Event that is dispatched when the ShippingAddress widget is first created.
class ShippingAddressInitialEvent extends ShippingAddressEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends ShippingAddressEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBox1Event extends ShippingAddressEvent {
  ChangeCheckBox1Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
