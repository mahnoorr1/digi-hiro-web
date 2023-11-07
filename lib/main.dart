import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:navigation_history_observer/navigation_history_observer.dart';

import 'package:digihiro/app_routes.dart';
import 'package:digihiro/base_wrapper.dart';
import 'package:digihiro/locator.dart';
import 'package:digihiro/services/app_navigation.dart';

import 'configs/core_theme.dart' as theme;

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  setPathUrlStrategy();

  setUpLocator();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorObservers: [
        NavigationHistoryObserver(),
      ],
      title: 'DigiHiro - Your Digital Marketing Hero',
      theme: theme.themeLight,
      builder: (context, child) => BaseWrapper(child: child!),
      navigatorKey: locator<AppNavigation>().navigatorKey,
      initialRoute: AppRoutes.home,
      onGenerateRoute: AppNavigation.onGenerateRoute,
    );
  }
}
