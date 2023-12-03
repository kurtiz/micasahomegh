import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/yourorder_item_model.dart';
import 'package:micasa_home_gh/presentation/notification_page/models/notification_model.dart';
part 'notification_event.dart';
part 'notification_state.dart';

/// A bloc that manages the state of a Notification according to the event that is dispatched to it.
class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  NotificationBloc(NotificationState initialState) : super(initialState) {
    on<NotificationInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NotificationInitialEvent event,
    Emitter<NotificationState> emit,
  ) async {
    emit(state.copyWith(
        notificationModelObj: state.notificationModelObj?.copyWith(
      yourorderItemList: fillYourorderItemList(),
    )));
  }

  List<YourorderItemModel> fillYourorderItemList() {
    return [
      YourorderItemModel(groupBy: "Your order #123456789 has been confirmed"),
      YourorderItemModel(groupBy: "Discover hot sale furnitures this week."),
      YourorderItemModel(groupBy: "Discover hot sale furnitures this week."),
      YourorderItemModel(groupBy: "Discover hot sale furnitures this week."),
      YourorderItemModel(groupBy: "Discover hot sale furnitures this week.")
    ];
  }
}
