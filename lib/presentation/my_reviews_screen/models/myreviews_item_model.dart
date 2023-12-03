/// This class is used in the [myreviews_item_widget] screen.
class MyreviewsItemModel {
  MyreviewsItemModel({
    this.coffeeTable,
    this.price,
    this.date,
    this.description,
    this.id,
  }) {
    coffeeTable = coffeeTable ?? "Coffee Table";
    price = price ?? " 50.00";
    date = date ?? "20/03/2020";
    description = description ??
        "Nice Furniture with good delivery. The delivery time is very fast. Then products look like exactly the picture in the app. Besides, color is also the same and quality is very good despite very cheap price";
    id = id ?? "";
  }

  String? coffeeTable;

  String? price;

  String? date;

  String? description;

  String? id;
}
