/// This class is used in the [order_item_widget] screen.
class OrderItemModel {
  OrderItemModel({
    this.orderNo,
    this.date,
    this.delivered,
    this.id,
  }) {
    orderNo = orderNo ?? "Order No238562312";
    date = date ?? "20/03/2020";
    delivered = delivered ?? "Delivered";
    id = id ?? "";
  }

  String? orderNo;

  String? date;

  String? delivered;

  String? id;
}
