/// This class is used in the [profile_item_widget] screen.
class ProfileItemModel {
  ProfileItemModel({
    this.myOrders,
    this.alreadyHaveTen,
    this.id,
  }) {
    myOrders = myOrders ?? "My orders";
    alreadyHaveTen = alreadyHaveTen ?? "Already have 10 orders";
    id = id ?? "";
  }

  String? myOrders;

  String? alreadyHaveTen;

  String? id;
}
