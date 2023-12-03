// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [product_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProductModel extends Equatable {
  ProductModel() {}

  ProductModel copyWith() {
    return ProductModel();
  }

  @override
  List<Object?> get props => [];
}
