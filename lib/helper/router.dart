import 'package:allyskymerchant/helper/config/theme/app_style.dart';
import 'package:allyskymerchant/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final navigatorState = GlobalKey<NavigatorState>();

final router = GoRouter(
  navigatorKey: navigatorState,
  // debugLogDiagnostics: true,
  initialLocation: '/',
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 10,
            shadowColor: const Color(0xFFEDEDED),
            title: Text(
              "Practices Flutter UI",
              style: AppTextStyle.header1(),
            ),
          ),
          body: child,
        );
      },
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const HomePage(),
        ),
      ],
    ),
  ],
);
