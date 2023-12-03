// ignore_for_file: must_be_immutable

part of 'payment_method_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PaymentMethod widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PaymentMethodEvent extends Equatable {}

/// Event that is dispatched when the PaymentMethod widget is first created.
class PaymentMethodInitialEvent extends PaymentMethodEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends PaymentMethodEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBox1Event extends PaymentMethodEvent {
  ChangeCheckBox1Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
