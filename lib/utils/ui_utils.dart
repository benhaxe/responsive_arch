import 'package:flutter/widgets.dart';
import 'package:responsive_arch/enums/device_screen_type.dart';

DeviceScreenType getDeviceType(MediaQueryData mediaQuery){
  // var orientation = mediaQuery.orientation;
  double deviceWidth = mediaQuery.size.shortestSide;

  ///If device is in landscape
  ///tje device width will be the height of the device
  ///else the it's the width
  
  // if(orientation == Orientation.landscape){
  //   deviceWidth = mediaQuery.size.height;
  // }else{
  //   deviceWidth = mediaQuery.size.width;
  // }

  if(deviceWidth > 950){
    return DeviceScreenType.Desktop;
  }

  if(deviceWidth > 600){
    return DeviceScreenType.Tablet;
  }

  return DeviceScreenType.Mobile;
}