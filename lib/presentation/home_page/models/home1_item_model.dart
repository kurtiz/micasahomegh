import '../../../core/app_export.dart';

/// This class is used in the [home1_item_widget] screen.
class Home1ItemModel {
  Home1ItemModel({
    this.blackSimpleLamp,
    this.blackSimpleLamp1,
    this.price,
    this.id,
  }) {
    blackSimpleLamp = blackSimpleLamp ?? ImageConstant.imgJonnyCaspariW;
    blackSimpleLamp1 = blackSimpleLamp1 ?? "Black Simple Lamp";
    price = price ?? " 12.00";
    id = id ?? "";
  }

  String? blackSimpleLamp;

  String? blackSimpleLamp1;

  String? price;

  String? id;
}
