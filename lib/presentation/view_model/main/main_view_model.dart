import 'package:flutter/material.dart';
import '../../../domain/services/navigation_service.dart';
import '../../../foundation/abstracts/base_view_model.dart';
import 'main_view_state.dart';

class MainViewModel extends ViewModel<MainViewModel, MainViewState> {
  ///
  final GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();

  ///
  final NavigationService navigationService;

  MainViewModel({required this.navigationService})
    : super(MainViewState.init()) {}

  int selectedIndex = 0;
}
