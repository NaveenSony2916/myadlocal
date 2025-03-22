import 'package:flutter/material.dart';
import '../../../domain/services/navigation_service.dart';
import '../../../foundation/abstracts/base_view_model.dart';
import 'compaign_view_state.dart';

class CompaignViewModel
    extends ViewModel<CompaignViewModel, CompaignViewState> {
  ///
  final GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();

  ///
  //final NotificationRepository? notificationRepository;
  // final SharedPreferenceService preferenceService;

  ///
  final NavigationService navigationService;

  CompaignViewModel(
      this.navigationService,
      // this.notificationRepository,
      // this.preferenceService,
      ) : super(CompaignViewState.init()) {
    init();
  }

  init() {}
}
