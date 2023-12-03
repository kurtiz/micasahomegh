// ignore_for_file: must_be_immutable

part of 'check_out_bloc.dart';

/// Represents the state of CheckOut in the application.
class CheckOutState extends Equatable {
  CheckOutState({
    this.mastercardController,
    this.durationController,
    this.checkOutModelObj,
  });

  TextEditingController? mastercardController;

  TextEditingController? durationController;

  CheckOutModel? checkOutModelObj;

  @override
  List<Object?> get props => [
        mastercardController,
        durationController,
        checkOutModelObj,
      ];
  CheckOutState copyWith({
    TextEditingController? mastercardController,
    TextEditingController? durationController,
    CheckOutModel? checkOutModelObj,
  }) {
    return CheckOutState(
      mastercardController: mastercardController ?? this.mastercardController,
      durationController: durationController ?? this.durationController,
      checkOutModelObj: checkOutModelObj ?? this.checkOutModelObj,
    );
  }
}
