import 'package:flutter/material.dart';
import 'package:responsive_arch/responsive/sizing_infromation.dart';
import 'package:responsive_arch/utils/ui_utils.dart';

class ResponsiveBuilder extends StatelessWidget{
  final Widget Function(
    BuildContext context,
    SizingInformation sizingInformation
  ) builder;

  const ResponsiveBuilder({
    Key key,
    this.builder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return LayoutBuilder(
      builder: (context, boxSizing){
        var sizingInformation = SizingInformation(
          // orientation: mediaQuery.orientation,
          deviceType:  getDeviceType(mediaQuery),
          screenSize:  mediaQuery.size,
          localWidgetSize: Size(boxSizing.maxWidth, boxSizing.maxHeight)
        );
        return builder(context, sizingInformation);
      },
    );
  } 
}