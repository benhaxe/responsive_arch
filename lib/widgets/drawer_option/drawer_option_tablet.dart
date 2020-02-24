import 'package:flutter/material.dart';

import 'drawer_option_mobile.dart';

class DrawerOptionTabletPotrait extends StatelessWidget {
  final String title;
  final IconData iconData;
  const DrawerOptionTabletPotrait({
    Key key,
    this.title,
    this.iconData
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 152,
      alignment: Alignment.center,
      child: Column(
        children: <Widget>[
          Icon(
            iconData,
            size: 45
          ),
          Text(
            title,
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}

class DrawerOptionTabletLandscape extends StatelessWidget {
  final String title;
  final IconData iconData;
  const DrawerOptionTabletLandscape({
    Key key,
    this.title,
    this.iconData
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerOptionMobilePotrait(
      title: title,
      iconData: iconData,
    );
  }
}