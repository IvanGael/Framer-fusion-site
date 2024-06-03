
import 'package:flutter/material.dart';

import '../utils/utils.dart';

class AppColors{
  static Color primary = Utils.getColorFromHex("#010f18");  
  static Color secondary = Utils.getColorFromHex("#010b14"); 
  static Color secondary2 = Utils.getColorFromHex("#010b14"); 
  static Color black = Colors.black;
  static Color black45 = Colors.black45;
  static Color black87 = Colors.black87;
  static Color white = Colors.white;
  static Color greyShade200 = Colors.grey.shade200;
  static Color greyShade100 = Colors.grey.shade100;
  static List<Color> gradient1 = [
    Utils.getColorFromHex("#101180"), 
    Utils.getColorFromHex("#1190f4")
  ];
  static List<Color> gradient2 = [
    Utils.getColorFromHex("#f41d44"), 
    Utils.getColorFromHex("#f3731f")
  ];
  static List<Color> gradient3 = [
    Utils.getColorFromHex("#ee7b29"), 
    Utils.getColorFromHex("#f3c958")
  ];
}