import 'package:flutter/material.dart';

import 'app_drawer.dart';

class AppDrawerTabletPortrait extends StatelessWidget {
  const AppDrawerTabletPortrait({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      padding: const EdgeInsets.only(top: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 16,
            color: Colors.black12
          )
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: AppDrawer.getDrawerOptions().reversed.toList()
      ),
    );
  }
}

class AppDrawerTabletLandscape extends StatelessWidget{
  const AppDrawerTabletLandscape({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 16,
            color: Colors.black12
          )
        ]
      ),
      child: Column(children: AppDrawer.getDrawerOptions()),
    );
  }
}