import 'package:digihiro/configs/app.dart';
import 'package:digihiro/responsive/responsive.dart';
import 'package:digihiro/widgets/navbar/navbar.dart';
import 'package:flutter/material.dart';

class BaseWrapper extends StatelessWidget {
  final Widget child;
  const BaseWrapper({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    App.init(context);

    return Scaffold(
      body: Stack(
        children: [
          child,
          if (Responsive.isDesktop(context)) const NavBar(),
        ],
      ),
    );
  }
}
