// ignore_for_file: must_be_immutable

part of 'add_payment_bloc.dart';

/// Represents the state of AddPayment in the application.
class AddPaymentState extends Equatable {
  AddPaymentState({
    this.cardNumberController,
    this.expirationDateController,
    this.addPaymentModelObj,
  });

  TextEditingController? cardNumberController;

  TextEditingController? expirationDateController;

  AddPaymentModel? addPaymentModelObj;

  @override
  List<Object?> get props => [
        cardNumberController,
        expirationDateController,
        addPaymentModelObj,
      ];
  AddPaymentState copyWith({
    TextEditingController? cardNumberController,
    TextEditingController? expirationDateController,
    AddPaymentModel? addPaymentModelObj,
  }) {
    return AddPaymentState(
      cardNumberController: cardNumberController ?? this.cardNumberController,
      expirationDateController:
          expirationDateController ?? this.expirationDateController,
      addPaymentModelObj: addPaymentModelObj ?? this.addPaymentModelObj,
    );
  }
}
