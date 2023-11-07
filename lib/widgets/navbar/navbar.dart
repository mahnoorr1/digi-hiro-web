import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:navigation_history_observer/navigation_history_observer.dart';

import 'package:digihiro/configs/app.dart';
import 'package:digihiro/configs/configs.dart';
import 'package:digihiro/locator.dart';
import 'package:digihiro/services/app_navigation.dart';
import 'package:digihiro/utils/static_assets.dart';
import 'package:digihiro/utils/utils.dart';

part 'widgets/_actions.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    App.init(context);

    return Padding(
      padding: Space.v1!,
      child: Row(
        children: [
          const Spacer(),
          SvgPicture.asset(
            StaticAssets.logoSVG,
            height: AppDimensions.normalize(12.5),
          ),
          const Spacer(
            flex: 4,
          ),
          ...Utils.navbarActions.map(
            (e) => _Actions(
              action: e,
              onPressed: () {
                locator<AppNavigation>().navigateTo(e['path']);

                setState(() {});
              },
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
