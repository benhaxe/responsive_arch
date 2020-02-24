import 'package:flutter/material.dart';

class DrawerHeaderMobilePotrait extends StatelessWidget {
  final String avatar;
  final String name;
  final String post;
  const DrawerHeaderMobilePotrait({
    Key key,
    this.avatar,
    this.name,
    this.post
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      height: 160,
      color: Colors.grey[100],
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey
            ),
          ),
          SizedBox(
            width: 12.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  name,
                  style: TextStyle(fontSize: 14.0),
                ),
                Text(
                  post,
                  style: TextStyle(fontSize: 12.0),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class DrawerHeaderMobileLandscape extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey
      ),
    );
  }
}