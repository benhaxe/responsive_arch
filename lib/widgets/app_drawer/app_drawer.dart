import 'package:flutter/material.dart';
import 'package:responsive_arch/responsive/orientation_layout.dart';
import 'package:responsive_arch/responsive/screen_type_layout.dart';
import 'package:responsive_arch/widgets/app_drawer/app_drawer_mobile.dart';
import 'package:responsive_arch/widgets/app_drawer/app_drawer_tablet.dart';
import 'package:responsive_arch/widgets/drawer_header/drawer_header.dart';
import 'package:responsive_arch/widgets/drawer_option/drawer_option.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key key}) : super(key: key);

  static List<Widget> getDrawerOptions() => [
    AppDrawerHeader(
      avatar: '',
      name: 'Benjamin Masebinu',
      post: 'Developer',
    ),
    DrawerOption(
      title: 'Images',
      iconData: Icons.image,
    ),
    DrawerOption(
      title: 'Reports',
      iconData: Icons.photo_filter,
    ),
    DrawerOption(
      title: 'Incidents',
      iconData: Icons.message,
    ),
    DrawerOption(
      title: 'Settings',
      iconData: Icons.settings,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ScreeTypeLayout(
      mobile: const AppDrawerMobileLayout(),
      tablet: const OrientationLayout(
        portrait: const AppDrawerTabletPortrait(),
        landscape: const AppDrawerTabletLandscape(),
      ),
    );
  }
}