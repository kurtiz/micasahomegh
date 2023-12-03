// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'yourorder_item_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [notification_page],
/// and is typically used to hold data that is passed between different parts of the application.
class NotificationModel extends Equatable {
  NotificationModel({
    this.yourorderItemList = const [],
    this.image,
  }) {
    image = image ?? ImageConstant.img2681826170x70;
  }

  List<YourorderItemModel> yourorderItemList;

  String? image;

  NotificationModel copyWith({
    List<YourorderItemModel>? yourorderItemList,
    String? image,
  }) {
    return NotificationModel(
      yourorderItemList: yourorderItemList ?? this.yourorderItemList,
      image: image ?? this.image,
    );
  }

  @override
  List<Object?> get props => [yourorderItemList, image];
}
