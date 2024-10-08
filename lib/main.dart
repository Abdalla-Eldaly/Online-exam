import 'package:flutter/material.dart';
import 'package:online_exam/presentation/resources/language_manager.dart';

import 'app/app.dart';
import 'package:easy_localization/easy_localization.dart';

late final WidgetsBinding engine;

void main()async {
  engine = WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(

    EasyLocalization(
    supportedLocales: AppLanguages.locals,
    path: AppLanguages.translationsPath,
    fallbackLocale: AppLanguages.fallBackLocal,
    startLocale: AppLanguages.startLocal,
    useOnlyLangCode: true,
    saveLocale: true,
    child: const MyApp(),
  ),
  );
}


