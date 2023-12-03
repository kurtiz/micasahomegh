import '../../../core/app_export.dart';

/// This class is used in the [favorite_item_widget] screen.
class FavoriteItemModel {
  FavoriteItemModel({
    this.coffeeTable,
    this.coffeeTable1,
    this.price,
    this.id,
  }) {
    coffeeTable = coffeeTable ?? ImageConstant.imgNathanDumlaoG;
    coffeeTable1 = coffeeTable1 ?? "Coffee Table";
    price = price ?? " 50.00";
    id = id ?? "";
  }

  String? coffeeTable;

  String? coffeeTable1;

  String? price;

  String? id;
}
