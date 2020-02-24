import 'package:flutter/material.dart';
import 'package:responsive_arch/enums/device_screen_type.dart';
import 'package:responsive_arch/responsive/responsive_builder.dart';

class ScreeTypeLayout extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const ScreeTypeLayout({
    Key key,
    @required this.mobile,
    this.tablet,
    this.desktop
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation){
        if(sizingInformation.deviceType == DeviceScreenType.Tablet){
          if(tablet != null){
            return tablet;
          }
        }

        if(sizingInformation.deviceType == DeviceScreenType.Desktop){
          if(desktop != null){
            return desktop;
          }
        }

        return mobile;
      },
    );
  }
}