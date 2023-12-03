import '../../../core/app_export.dart';

/// This class is used in the [cart_item_widget] screen.
class CartItemModel {
  CartItemModel({
    this.minimalStand,
    this.minimalStand1,
    this.price,
    this.iconButton,
    this.one,
    this.id,
  }) {
    minimalStand = minimalStand ?? ImageConstant.img26818261100x100;
    minimalStand1 = minimalStand1 ?? "Minimal Stand";
    price = price ?? " 25.00";
    iconButton = iconButton ?? ImageConstant.imgGroup15;
    one = one ?? "01";
    id = id ?? "";
  }

  String? minimalStand;

  String? minimalStand1;

  String? price;

  String? iconButton;

  String? one;

  String? id;
}
