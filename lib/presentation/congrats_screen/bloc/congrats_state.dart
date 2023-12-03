// ignore_for_file: must_be_immutable

part of 'congrats_bloc.dart';

/// Represents the state of Congrats in the application.
class CongratsState extends Equatable {
  CongratsState({this.congratsModelObj});

  CongratsModel? congratsModelObj;

  @override
  List<Object?> get props => [
        congratsModelObj,
      ];
  CongratsState copyWith({CongratsModel? congratsModelObj}) {
    return CongratsState(
      congratsModelObj: congratsModelObj ?? this.congratsModelObj,
    );
  }
}
