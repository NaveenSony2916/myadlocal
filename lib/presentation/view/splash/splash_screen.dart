import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:local/domain/services/navigation_service.dart';
import 'package:local/utils/common_color/app_color.dart';
import 'package:provider/provider.dart';
import '../../../application/injections/injector.dart';
import '../../../utils/helper/asset_helper.dart';
import '../../view_model/splash/splash_provider.dart';
import '../../view_model/splash/splash_view_model.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
  // First animation controller (scale, opacity, rotation)
  late AnimationController _initialController;
  late Animation<double> _scaleAnimation;
  late Animation<double> _opacityAnimation;
  late Animation<double> _rotationAnimation;

  // Second animation controller (jumping)
  late AnimationController _jumpController;
  late Animation<double> _jumpAnimation;

  // Flags to control animation states
  bool _showJump = false;
  bool _jumpCompleted = false;


  ///
  final NavigationService navigationService = injector<NavigationService>();

  @override
  void initState() {
    super.initState();

    // Initial animation controller setup
    _initialController = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );

    // Scale animation: start small and grow
    _scaleAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _initialController,
        curve: const Interval(0.0, 0.6, curve: Curves.easeOutBack),
      ),
    );

    // Opacity animation: fade in
    _opacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _initialController,
        curve: const Interval(0.0, 0.4, curve: Curves.easeIn),
      ),
    );

    // Rotation animation: spin slightly
    _rotationAnimation = Tween<double>(begin: -0.1, end: 0.0).animate(
      CurvedAnimation(
        parent: _initialController,
        curve: const Interval(0.4, 0.7, curve: Curves.elasticOut),
      ),
    );

    // Jump animation controller setup - just one complete jump
    _jumpController = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );

    // Single jump animation
    _jumpAnimation = TweenSequence<double>([
      TweenSequenceItem(
        tween: Tween<double>(begin: 0, end: -50), // Jump up
        weight: 40,
      ),
      TweenSequenceItem(
        tween: Tween<double>(begin: -50, end: 0), // Fall down
        weight: 60,
      ),
    ]).animate(
      CurvedAnimation(
        parent: _jumpController,
        curve: Curves.easeInOut,
      ),
    );

    _jumpController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        print("Jump is completed");
        navigationService.navigateToLoginScreen();
        setState(() {
          _jumpCompleted = true;
        });
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _initialController.forward().then((_) {
        // When initial animation completes, enable jump and start jump animation
        setState(() {
          _showJump = true;
        });
        _jumpController.forward();
      });
    });
  }

  @override
  void dispose() {
    _initialController.dispose();
    _jumpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SplashProvider(builder: (context, child) {
      final SplashViewModel viewModel =
      Provider.of<SplashViewModel>(context, listen: true);

      return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _showJump
                  ? // After initial animation completes, show jumping logo
              AnimatedBuilder(
                animation: _jumpController,
                builder: (context, child) {
                  return Transform.translate(
                    offset: Offset(0, _jumpAnimation.value),
                    child: Image.asset('assets/images/logo.png', height: 120),
                  );
                },
              )
                  : // During initial animation, show the standard animations
              AnimatedBuilder(
                animation: _initialController,
                builder: (context, child) {
                  return Transform.rotate(
                    angle: _rotationAnimation.value,
                    child: Opacity(
                      opacity: _opacityAnimation.value,
                      child: Transform.scale(
                        scale: _scaleAnimation.value,
                        child: Image.asset('assets/images/logo.png', height: 120),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      );
    });
  }
}