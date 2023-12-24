import 'package:crypto_app/config/routes/routes.dart';
import 'package:crypto_app/features/home/presentation/view/home_view.dart';
import 'package:crypto_app/features/io_crypto/presentation/view/io_crypto_view.dart';
import 'package:crypto_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.initialRoute:
        return MaterialPageRoute(builder: (context) => const IoCryptoView());

      case Routes.splashViewRoute:
        return MaterialPageRoute(builder: (context) => const SplashView());

      case Routes.homeViewRoute:
        return MaterialPageRoute(builder: (context) => const HomeView());

      default:
        return _unFoundRoute();
    }
  }

  static Route<dynamic> _unFoundRoute() {
    return MaterialPageRoute(
      builder: (context) => const Scaffold(
        body: Center(
          child: Text(
            "Un Found Route",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
