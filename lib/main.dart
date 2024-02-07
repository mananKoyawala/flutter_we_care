import 'package:flutter/material.dart';
import 'package:we_care/Controller/SharedPrefences.dart';
import 'package:we_care/Screens/SpalshScreen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'Controller/LanguageController.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  FlutterNativeSplash.remove();
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({super.key});

  SharedPref pref = Get.put(SharedPref());
  LanguageController languageController = Get.put(LanguageController());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: 'roboto',
        ),
        home: const SplashScreen(),
        locale: Locale(languageController.currentLocale.value),
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [Locale('en'), Locale('gu'), Locale('hi')],
      ),
    );
  }
}
