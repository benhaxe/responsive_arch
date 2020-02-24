import 'package:flutter/material.dart';
import 'package:responsive_arch/responsive/orientation_layout.dart';
import 'package:responsive_arch/responsive/screen_type_layout.dart';
import 'package:responsive_arch/widgets/drawer_option/drawer_option_mobile.dart';
import 'package:responsive_arch/widgets/drawer_option/drawer_option_tablet.dart';

class DrawerOption extends StatelessWidget {
  final String title;
  final IconData iconData;

  const DrawerOption({
    Key key,
    this.title,
    this.iconData
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreeTypeLayout(
      mobile: OrientationLayout(
        portrait: DrawerOptionMobilePotrait(
          title: title,
          iconData: iconData,
        ),
        landscape: DrawerOptionMobileLandscape(
          iconData: iconData,
        ),
      ),
      tablet: OrientationLayout(
        portrait: DrawerOptionTabletPotrait(
          title: title,
          iconData: iconData,
        ),
        landscape: DrawerOptionTabletLandscape(
          title: title,
          iconData: iconData,
        ),
      ),
    );
  }
}