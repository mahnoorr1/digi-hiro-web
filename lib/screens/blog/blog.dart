import 'package:flutter/material.dart';
import 'package:digihiro/configs/app.dart';
import 'package:digihiro/responsive/responsive.dart';

part 'views/desktop.dart';
part 'views/tablet.dart';
part 'views/mobile.dart';

class BlogScreen extends StatelessWidget {
  const BlogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    App.init(context);

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: const Scaffold(
        body: SafeArea(
          child: Responsive(
            mobile: Mobile(),
            tablet: Tablet(),
            desktop: Desktop(),
          ),
        ),
      ),
    );
  }
}
