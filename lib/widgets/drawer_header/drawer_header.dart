import 'package:flutter/material.dart';
import 'package:responsive_arch/responsive/orientation_layout.dart';
import 'package:responsive_arch/responsive/screen_type_layout.dart';

import 'drawer_header_mobile.dart';
import 'drawer_header_tablet.dart';

class AppDrawerHeader extends StatelessWidget {
  final String avatar;
  final String name;
  final String post;
  const AppDrawerHeader({
    Key key,
    this.avatar,
    this.name,
    this.post
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreeTypeLayout(
      mobile: OrientationLayout(
        portrait: DrawerHeaderMobilePotrait(
          avatar: avatar,
          name: name,
          post: post,
        ),
        landscape: DrawerHeaderMobileLandscape(),
      ),
      tablet: OrientationLayout(
        portrait: DrawerHeaderTabletPotrait(),
        landscape: DrawerHeaderTabletLandscape(
          avatar: avatar,
          name: name,
          post: post,
        ),
      ),
    );
  }
}