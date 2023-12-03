// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [check_out_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CheckOutModel extends Equatable {
  CheckOutModel() {}

  CheckOutModel copyWith() {
    return CheckOutModel();
  }

  @override
  List<Object?> get props => [];
}
