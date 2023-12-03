import '../../../core/app_export.dart';

/// This class is used in the [home_item_widget] screen.
class HomeItemModel {
  HomeItemModel({
    this.iconButton,
    this.popular,
    this.id,
  }) {
    iconButton = iconButton ?? ImageConstant.imgStar1;
    popular = popular ?? "Popular";
    id = id ?? "";
  }

  String? iconButton;

  String? popular;

  String? id;
}
