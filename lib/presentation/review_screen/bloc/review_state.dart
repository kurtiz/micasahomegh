// ignore_for_file: must_be_immutable

part of 'review_bloc.dart';

/// Represents the state of Review in the application.
class ReviewState extends Equatable {
  ReviewState({this.reviewModelObj});

  ReviewModel? reviewModelObj;

  @override
  List<Object?> get props => [
        reviewModelObj,
      ];
  ReviewState copyWith({ReviewModel? reviewModelObj}) {
    return ReviewState(
      reviewModelObj: reviewModelObj ?? this.reviewModelObj,
    );
  }
}
