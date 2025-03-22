import 'package:flutter/material.dart';
import '../../../domain/services/navigation_service.dart';
import '../../../foundation/abstracts/base_view_model.dart';
import 'notification_view_state.dart';

class NotificationViewModel
    extends ViewModel<NotificationViewModel, NotificationViewState> {
  ///
  final GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();

  ///
  //final NotificationRepository? notificationRepository;
  // final SharedPreferenceService preferenceService;

  ///
  final NavigationService navigationService;

  NotificationViewModel(
    this.navigationService,
    // this.notificationRepository,
    // this.preferenceService,
  ) : super(NotificationViewState.init()) {
    init();
  }

  init() {}
}
