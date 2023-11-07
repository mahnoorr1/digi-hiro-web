import 'package:flutter/material.dart';

import 'package:digihiro/app_routes.dart';
import 'package:digihiro/screens/about_us/about_us.dart';
import 'package:digihiro/screens/blog/blog.dart';
import 'package:digihiro/screens/contact_us/contact_us.dart';
import 'package:digihiro/screens/home/home.dart';

class AppNavigation {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.home:
        return _FadeRoute(
          child: const HomeScreen(),
          route: AppRoutes.home,
        );
      case AppRoutes.aboutUs:
        return _FadeRoute(
          child: const AboutUsScreen(),
          route: AppRoutes.aboutUs,
        );
      case AppRoutes.contactUs:
        return _FadeRoute(
          child: const ContactUsScreen(),
          route: AppRoutes.contactUs,
        );
      case AppRoutes.blog:
        return _FadeRoute(
          child: const BlogScreen(),
          route: AppRoutes.blog,
        );

      default:
        return _FadeRoute(
          child: const HomeScreen(),
          route: AppRoutes.home,
        );
    }
  }

  Future<dynamic> navigateTo(String route) {
    return navigatorKey.currentState!.pushNamed(route);
  }

  void goBack() => navigatorKey.currentState!.pop();
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  final String route;

  _FadeRoute({required this.child, required this.route})
      : super(
          settings: RouteSettings(name: route),
          pageBuilder: (context, ani1, ani2) => child,
          transitionsBuilder: (context, ani1, ani2, child) => FadeTransition(
            opacity: ani1,
            child: child,
          ),
        );
}
