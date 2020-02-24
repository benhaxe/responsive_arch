import 'package:flutter/material.dart';

import 'drawer_header_mobile.dart';

class DrawerHeaderTabletPotrait extends StatelessWidget {
  const DrawerHeaderTabletPotrait({Key key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.only(bottom: 16.0),
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey
      ),
    );
  }
}

class DrawerHeaderTabletLandscape extends StatelessWidget{
  final String avatar;
  final String name;
  final String post;
  const DrawerHeaderTabletLandscape({
    Key key,
    this.avatar,
    this.name,
    this.post
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DrawerHeaderMobilePotrait(
      avatar: avatar,
      name: name,
      post: post,
    );
  }
}