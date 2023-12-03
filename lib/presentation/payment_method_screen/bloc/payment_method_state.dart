// ignore_for_file: must_be_immutable

part of 'payment_method_bloc.dart';

/// Represents the state of PaymentMethod in the application.
class PaymentMethodState extends Equatable {
  PaymentMethodState({
    this.vector = false,
    this.checkboxoff = false,
    this.paymentMethodModelObj,
  });

  PaymentMethodModel? paymentMethodModelObj;

  bool vector;

  bool checkboxoff;

  @override
  List<Object?> get props => [
        vector,
        checkboxoff,
        paymentMethodModelObj,
      ];
  PaymentMethodState copyWith({
    bool? vector,
    bool? checkboxoff,
    PaymentMethodModel? paymentMethodModelObj,
  }) {
    return PaymentMethodState(
      vector: vector ?? this.vector,
      checkboxoff: checkboxoff ?? this.checkboxoff,
      paymentMethodModelObj:
          paymentMethodModelObj ?? this.paymentMethodModelObj,
    );
  }
}
