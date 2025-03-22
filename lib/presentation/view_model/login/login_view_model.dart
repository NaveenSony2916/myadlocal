import 'dart:async';
import 'package:flutter/material.dart';
import '../../../../domain/services/navigation_service.dart';
import '../../../../foundation/abstracts/base_view_model.dart';
import 'login_view_state.dart';

class LoginViewModel extends ViewModel<LoginViewModel, LoginViewState> {
  ///
  final GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();

  ///
  final formKey = GlobalKey<FormState>();

  ///
  final NavigationService navigationService;

  ///
  final TextEditingController nameController = TextEditingController();

  ///
  final TextEditingController passwordController = TextEditingController();

  ///
  //final LoginRepository loginRepository;

  ///
 // final SharedPreferenceService preferenceService;

  String username = "";
  String password = "";

  LoginViewModel({
    required this.navigationService,
   // required this.preferenceService,
  //  required this.loginRepository,
  }) : super(LoginViewState.init()) {
    init();
  }

  ///
  void init() async {
    ///
    // listenToConnectivity();

    ///
    Future.delayed(const Duration(microseconds: 7000), () {
      debugPrint('Animation Completed');
    });
    nameController.addListener(_updateUsername);
    passwordController.addListener(_updatePassword);
  }

  void _updateUsername() {
    username = nameController.text;
    notifyListeners();
  }

  void _updatePassword() {
    password = passwordController.text;
    notifyListeners();
  }


  void navigateToHomeScreen() {
    navigationService.navigateToHomeScreen();
  }
}
