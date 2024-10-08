import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

import '../presentation/resources/routes_manger.dart';
import '../presentation/resources/theme_manager.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.splashRoute,
      theme: getApplicationTheme(),
      onGenerateRoute: RouteGenerator.getRoute,
    );
  }
}
