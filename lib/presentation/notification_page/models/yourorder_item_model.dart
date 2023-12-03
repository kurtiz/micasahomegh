/// This class is used in the [yourorder_item_widget] screen.
class YourorderItemModel {
  YourorderItemModel({
    this.groupBy,
    this.id,
  }) {
    groupBy = groupBy ?? "";
    id = id ?? "";
  }

  String? groupBy;

  String? id;
}
