// ignore_for_file: must_be_immutable

part of 'my_reviews_bloc.dart';

/// Represents the state of MyReviews in the application.
class MyReviewsState extends Equatable {
  MyReviewsState({this.myReviewsModelObj});

  MyReviewsModel? myReviewsModelObj;

  @override
  List<Object?> get props => [
        myReviewsModelObj,
      ];
  MyReviewsState copyWith({MyReviewsModel? myReviewsModelObj}) {
    return MyReviewsState(
      myReviewsModelObj: myReviewsModelObj ?? this.myReviewsModelObj,
    );
  }
}
