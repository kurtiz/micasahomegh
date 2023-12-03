// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'myreviews_item_model.dart';

/// This class defines the variables used in the [my_reviews_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MyReviewsModel extends Equatable {
  MyReviewsModel({this.myreviewsItemList = const []}) {}

  List<MyreviewsItemModel> myreviewsItemList;

  MyReviewsModel copyWith({List<MyreviewsItemModel>? myreviewsItemList}) {
    return MyReviewsModel(
      myreviewsItemList: myreviewsItemList ?? this.myreviewsItemList,
    );
  }

  @override
  List<Object?> get props => [myreviewsItemList];
}
