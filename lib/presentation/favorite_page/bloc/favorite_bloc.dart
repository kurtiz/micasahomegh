import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/favorite_item_model.dart';
import 'package:micasa_home_gh/presentation/favorite_page/models/favorite_model.dart';
part 'favorite_event.dart';
part 'favorite_state.dart';

/// A bloc that manages the state of a Favorite according to the event that is dispatched to it.
class FavoriteBloc extends Bloc<FavoriteEvent, FavoriteState> {
  FavoriteBloc(FavoriteState initialState) : super(initialState) {
    on<FavoriteInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FavoriteInitialEvent event,
    Emitter<FavoriteState> emit,
  ) async {
    emit(state.copyWith(
        favoriteModelObj: state.favoriteModelObj?.copyWith(
      favoriteItemList: fillFavoriteItemList(),
    )));
  }

  List<FavoriteItemModel> fillFavoriteItemList() {
    return [
      FavoriteItemModel(
          coffeeTable: ImageConstant.imgNathanDumlaoG,
          coffeeTable1: "Coffee Table",
          price: " 50.00"),
      FavoriteItemModel(
          coffeeTable: ImageConstant.imgSarahDorweiler100x100,
          coffeeTable1: "Coffee Chair",
          price: " 20.00"),
      FavoriteItemModel(
          coffeeTable: ImageConstant.img26818261100x100,
          coffeeTable1: "Minimal Stand",
          price: " 25.00"),
      FavoriteItemModel(
          coffeeTable: ImageConstant.img39689011100x100,
          coffeeTable1: "Minimal Desk",
          price: " 50.00")
    ];
  }
}
