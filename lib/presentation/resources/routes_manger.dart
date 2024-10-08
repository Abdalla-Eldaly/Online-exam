import 'package:flutter/material.dart';
import 'package:online_exam/presentation/resources/string_manger.dart';
import 'package:easy_localization/easy_localization.dart';
import '../splash_screen/view/splash_screen_view.dart';
class Routes{
  Routes._();

  static const String splashRoute = "/";

}


class RouteGenerator{
  RouteGenerator._();

  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      default:
        return unDefinedRoute();
    }

  }
  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text(AppStrings.noRouteFound.tr()),
        ),
        body: Center(child: Text(AppStrings.noRouteFound.tr())),
      ),
    );
  }

}