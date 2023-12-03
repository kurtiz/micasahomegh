import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:micasa_home_gh/presentation/product_screen/models/product_model.dart';
part 'product_event.dart';
part 'product_state.dart';

/// A bloc that manages the state of a Product according to the event that is dispatched to it.
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc(ProductState initialState) : super(initialState) {
    on<ProductInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProductInitialEvent event,
    Emitter<ProductState> emit,
  ) async {}
}
