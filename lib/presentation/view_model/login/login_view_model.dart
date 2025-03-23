import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';
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
  final TextEditingController emailIdController = TextEditingController();

  ///
  final TextEditingController passwordController = TextEditingController();

  final LocalAuthentication localAuth = LocalAuthentication();

  String username = "";
  String password = "";
  bool rememberPassword = false;

  LoginViewModel({required this.navigationService})
    : super(LoginViewState.init()) {
    init();
  }

  ///
  void init() async {
    emailIdController.addListener(_updateUsername);
    passwordController.addListener(_updatePassword);
   // authenticate();
  }

  void _updateUsername() {
    username = emailIdController.text;
    notifyListeners();
  }

  void _updatePassword() {
    password = passwordController.text;
    notifyListeners();
  }

  /// Email Validator
  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "Email is required";
    }
    final emailRegex = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );
    if (!emailRegex.hasMatch(value)) {
      return "Enter a valid email";
    }
    return null;
  }

  /// Password Validator
  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Password is required";
    }
    if (value.length < 6) {
      return "Password must be at least 6 characters";
    }
    return null;
  }

  bool validateForm() {
    return formKey.currentState?.validate() ?? false;
  }

  void navigateToHomeScreen() {
    if (validateForm()) {
      navigationService.navigateToHomeScreen();
    }
  }

  void submitLogin() {
    if (validateForm()) {
      navigateToHomeScreen();
    }
  }

  void toggleRememberPassword() {
    rememberPassword = !rememberPassword;
    notifyListeners();
  }

  @override
  void dispose() {
    emailIdController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  /// **Check if device supports biometrics**
  Future<bool> canCheckBiometrics() async {
    return await localAuth.canCheckBiometrics;

  }

  /// **Authenticate with fingerprint**
  Future<void> authenticate() async {
    bool isAuthenticated = false;
    try {
      isAuthenticated = await localAuth.authenticate(
        localizedReason: 'Use fingerprint to log in',
        options: const AuthenticationOptions(
          biometricOnly: true,
          stickyAuth: true,
          useErrorDialogs: true,
        ),
      );
    } on PlatformException catch (e) {
      debugPrint("Fingerprint Auth Error: ${e.message}");
    }

    if (isAuthenticated) {
      onSuccessfulAuth();
    }
  }


  /// **Handle successful authentication**
  void onSuccessfulAuth() {
    debugPrint("Fingerprint Authentication Successful!");
    navigationService.navigateToHomeScreen();
    // Navigate to the home screen or perform login
  }
}
