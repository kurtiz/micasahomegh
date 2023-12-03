import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/home_item_model.dart';
import '../models/home1_item_model.dart';
import 'package:micasa_home_gh/presentation/home_page/models/home_model.dart';
part 'home_event.dart';
part 'home_state.dart';

/// A bloc that manages the state of a Home according to the event that is dispatched to it.
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(HomeState initialState) : super(initialState) {
    on<HomeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomeInitialEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(
        homeModelObj: state.homeModelObj?.copyWith(
      homeItemList: fillHomeItemList(),
      home1ItemList: fillHome1ItemList(),
    )));
  }

  List<HomeItemModel> fillHomeItemList() {
    return [
      HomeItemModel(iconButton: ImageConstant.imgStar1, popular: "Popular"),
      HomeItemModel(iconButton: ImageConstant.imgChair4, popular: "Chair"),
      HomeItemModel(iconButton: ImageConstant.imgTable11, popular: "Table"),
      HomeItemModel(iconButton: ImageConstant.imgSofa1, popular: "Armchair"),
      HomeItemModel(iconButton: ImageConstant.imgBed1, popular: "Bed")
    ];
  }

  List<Home1ItemModel> fillHome1ItemList() {
    return [
      Home1ItemModel(
          blackSimpleLamp: ImageConstant.imgJonnyCaspariW,
          blackSimpleLamp1: "Black Simple Lamp",
          price: " 12.00"),
      Home1ItemModel(
          blackSimpleLamp: ImageConstant.img26818261,
          blackSimpleLamp1: "Minimal Stand",
          price: " 25.00"),
      Home1ItemModel(
          blackSimpleLamp: ImageConstant.imgSarahDorweiler,
          blackSimpleLamp1: "Coffee Chair",
          price: " 20.00"),
      Home1ItemModel(
          blackSimpleLamp: ImageConstant.img39689011,
          blackSimpleLamp1: "Simple Desk",
          price: " 50.00")
    ];
  }
}
