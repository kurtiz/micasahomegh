import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/myreviews_item_model.dart';
import 'package:micasa_home_gh/presentation/my_reviews_screen/models/my_reviews_model.dart';
part 'my_reviews_event.dart';
part 'my_reviews_state.dart';

/// A bloc that manages the state of a MyReviews according to the event that is dispatched to it.
class MyReviewsBloc extends Bloc<MyReviewsEvent, MyReviewsState> {
  MyReviewsBloc(MyReviewsState initialState) : super(initialState) {
    on<MyReviewsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MyReviewsInitialEvent event,
    Emitter<MyReviewsState> emit,
  ) async {
    emit(state.copyWith(
        myReviewsModelObj: state.myReviewsModelObj
            ?.copyWith(myreviewsItemList: fillMyreviewsItemList())));
  }

  List<MyreviewsItemModel> fillMyreviewsItemList() {
    return [
      MyreviewsItemModel(
          coffeeTable: "Coffee Table",
          price: " 50.00",
          date: "20/03/2020",
          description:
              "Nice Furniture with good delivery. The delivery time is very fast. Then products look like exactly the picture in the app. Besides, color is also the same and quality is very good despite very cheap price"),
      MyreviewsItemModel(
          coffeeTable: "Coffee Table",
          price: " 50.00",
          date: "20/03/2020",
          description:
              "Nice Furniture with good delivery. The delivery time is very fast. Then products look like exactly the picture in the app. Besides, color is also the same and quality is very good despite very cheap price"),
      MyreviewsItemModel(
          coffeeTable: "Coffee Table",
          price: " 50.00",
          date: "20/03/2020",
          description:
              "Nice Furniture with good delivery. The delivery time is very fast. Then products look like exactly the picture in the app. Besides, color is also the same and quality is very good despite very cheap price")
    ];
  }
}
