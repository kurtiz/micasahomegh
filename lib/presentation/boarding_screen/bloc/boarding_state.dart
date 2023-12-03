// ignore_for_file: must_be_immutable

part of 'boarding_bloc.dart';

/// Represents the state of Boarding in the application.
class BoardingState extends Equatable {
  BoardingState({this.boardingModelObj});

  BoardingModel? boardingModelObj;

  @override
  List<Object?> get props => [
        boardingModelObj,
      ];
  BoardingState copyWith({BoardingModel? boardingModelObj}) {
    return BoardingState(
      boardingModelObj: boardingModelObj ?? this.boardingModelObj,
    );
  }
}
