// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'home_item_model.dart';
import 'home1_item_model.dart';

/// This class defines the variables used in the [home_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel extends Equatable {
  HomeModel({
    this.homeItemList = const [],
    this.home1ItemList = const [],
  }) {}

  List<HomeItemModel> homeItemList;

  List<Home1ItemModel> home1ItemList;

  HomeModel copyWith({
    List<HomeItemModel>? homeItemList,
    List<Home1ItemModel>? home1ItemList,
  }) {
    return HomeModel(
      homeItemList: homeItemList ?? this.homeItemList,
      home1ItemList: home1ItemList ?? this.home1ItemList,
    );
  }

  @override
  List<Object?> get props => [homeItemList, home1ItemList];
}
