// ignore_for_file: must_be_immutable

part of 'add_shipping_address_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AddShippingAddress widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AddShippingAddressEvent extends Equatable {}

/// Event that is dispatched when the AddShippingAddress widget is first created.
class AddShippingAddressInitialEvent extends AddShippingAddressEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends AddShippingAddressEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown1Event extends AddShippingAddressEvent {
  ChangeDropDown1Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
