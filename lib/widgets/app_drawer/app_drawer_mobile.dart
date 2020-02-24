import 'package:flutter/material.dart';
import 'package:responsive_arch/widgets/app_drawer/app_drawer.dart';

class AppDrawerMobileLayout extends StatelessWidget {
  const AppDrawerMobileLayout({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    return Container(
      width: orientation == Orientation.portrait ? 250 : 100,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 16,
              color: Colors.black12,
            )
          ]
      ),
      child: Column(
        children: AppDrawer.getDrawerOptions()
      ),
    );
  }
}

class AppDrawerMobileLayoutWithOrientationBuilder extends StatelessWidget {
  const AppDrawerMobileLayoutWithOrientationBuilder({Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) => Container(
        width: orientation == Orientation.portrait ? 250 : 100,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 16,
                color: Colors.black12
              )
            ]
        ),
      ),
    );
  }
}
