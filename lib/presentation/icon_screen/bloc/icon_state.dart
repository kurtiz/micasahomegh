// ignore_for_file: must_be_immutable

part of 'icon_bloc.dart';

/// Represents the state of Icon in the application.
class IconState extends Equatable {
  IconState({this.iconModelObj});

  IconModel? iconModelObj;

  @override
  List<Object?> get props => [
        iconModelObj,
      ];
  IconState copyWith({IconModel? iconModelObj}) {
    return IconState(
      iconModelObj: iconModelObj ?? this.iconModelObj,
    );
  }
}
