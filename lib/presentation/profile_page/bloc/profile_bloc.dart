import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/profile_item_model.dart';
import 'package:micasa_home_gh/presentation/profile_page/models/profile_model.dart';
part 'profile_event.dart';
part 'profile_state.dart';

/// A bloc that manages the state of a Profile according to the event that is dispatched to it.
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc(ProfileState initialState) : super(initialState) {
    on<ProfileInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileInitialEvent event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(
        profileModelObj: state.profileModelObj?.copyWith(
      profileItemList: fillProfileItemList(),
    )));
  }

  List<ProfileItemModel> fillProfileItemList() {
    return [
      ProfileItemModel(
          myOrders: "My orders", alreadyHaveTen: "Already have 10 orders"),
      ProfileItemModel(
          myOrders: "Shipping Addresses", alreadyHaveTen: "03 Addresses"),
      ProfileItemModel(
          myOrders: "Payment Method", alreadyHaveTen: "You have 2 cards"),
      ProfileItemModel(
          myOrders: "My reviews", alreadyHaveTen: "Reviews for 5 items"),
      ProfileItemModel(
          myOrders: "Setting",
          alreadyHaveTen: "Notification, Password, FAQ, Contact")
    ];
  }
}
