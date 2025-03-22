import 'package:flutter/material.dart';
import 'package:local/presentation/view_model/profile/profile_view_state.dart';
import '../../../domain/services/navigation_service.dart';
import '../../../foundation/abstracts/base_view_model.dart';

class ProfileViewModel extends ViewModel<ProfileViewModel, ProfileViewState> {
  ///
  final GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();

  ///
  String? customerName;

  ///
  //final SharedPreferenceService preferenceService;

  ///
  final NavigationService navigationService;

  ProfileViewModel(this.navigationService) : super(ProfileViewState.init()) {
    init();
  }

  init() {}
}
