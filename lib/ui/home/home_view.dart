import 'package:flutter/material.dart';
import 'package:responsive_arch/responsive/orientation_layout.dart';
import 'package:responsive_arch/responsive/screen_type_layout.dart';
import 'package:responsive_arch/ui/home/home_view_mobile.dart';
import 'package:responsive_arch/ui/home/home_view_tablet.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    Key key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreeTypeLayout(
      mobile: OrientationLayout(
        portrait: HomeMobilePotrait(),
        landscape: HomeMobileLandscape(),
      ),
      tablet: OrientationLayout(
        portrait: HomeTablet(),
        landscape: null,
      ),
    );
  }
}