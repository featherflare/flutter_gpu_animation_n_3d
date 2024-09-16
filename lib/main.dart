import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'helper/localization/locale_constant.dart';
import 'helper/localization/localization_delegate.dart';
import 'helper/router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  static void setLocale(BuildContext context, Locale newLocale) {
    var state = context.findAncestorStateOfType<_MyAppState>();
    state?.setLocale(newLocale);
  }

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale? _locale;

  void setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  void didChangeDependencies() async {
    getLocale().then((locale) {
      setState(() {
        _locale = locale;
      });
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'ALLYMerchant',
      debugShowCheckedModeBanner: false,
      locale: _locale ?? const Locale('en', ''),
      theme: ThemeData(
        primarySwatch: Colors.grey,
        fontFamily: 'PromptRegular',
        tabBarTheme: const TabBarTheme(),
        useMaterial3: true,
      ),
      routerConfig: router,
      supportedLocales: const [Locale('en', ''), Locale('th', '')],
      localizationsDelegates: const [
        AppLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      localeResolutionCallback: (locale, supportedLocales) {
        for (var supportedLocale in supportedLocales) {
          if (supportedLocale.languageCode == locale?.languageCode &&
              supportedLocale.countryCode == locale?.countryCode) {
            return supportedLocale;
          }
        }
        return supportedLocales.first;
      },
    );
  }
}
