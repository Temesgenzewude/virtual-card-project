import 'package:flutter/material.dart';
class AppDimension{
  static double myDeviceWidth = 390;
  static double myDeviceHeight = 844;
  static width(double p,BuildContext context)
  {
    return MediaQuery.of(context).size.width/(myDeviceWidth/p );
  }
  static height(double p,BuildContext context)
  {
    return MediaQuery.of(context).size.height/(myDeviceHeight/p);
  }
}


