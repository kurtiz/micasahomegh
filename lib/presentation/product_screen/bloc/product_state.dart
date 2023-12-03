// ignore_for_file: must_be_immutable

part of 'product_bloc.dart';

/// Represents the state of Product in the application.
class ProductState extends Equatable {
  ProductState({this.productModelObj});

  ProductModel? productModelObj;

  @override
  List<Object?> get props => [
        productModelObj,
      ];
  ProductState copyWith({ProductModel? productModelObj}) {
    return ProductState(
      productModelObj: productModelObj ?? this.productModelObj,
    );
  }
}
