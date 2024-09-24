import 'package:ecommerce_mobile_app/core/routes/routs.dart';
import 'package:ecommerce_mobile_app/ui/screens/onbording_screens/onbprding_screen.dart';
import 'package:ecommerce_mobile_app/ui/screens/sign_in_screen/sign_in_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRourer(RouteSettings settings) {
    switch (settings.name) {
      case Routs.onbordingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );
      case Routs.signInScreen:
        return MaterialPageRoute(
          builder: (_) => const SignInScreen(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
