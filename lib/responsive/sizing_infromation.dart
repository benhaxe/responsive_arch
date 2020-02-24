import 'package:flutter/widgets.dart';
import 'package:responsive_arch/enums/device_screen_type.dart';

class SizingInformation{
  // final Orientation orientation;
  final DeviceScreenType deviceType;
  final Size screenSize;
  final Size localWidgetSize;

  const SizingInformation({
    // this.orientation,
    this.deviceType,
    this.screenSize,
    this.localWidgetSize
  });

  @override
  String toString() {
    return 'DeviceType: $deviceType ScreenSize: $screenSize LocalWidgetSize: $localWidgetSize';
  }
}