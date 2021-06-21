import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'app_string.dart';


class ScreenConfig {
  static MediaQueryData mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double blockSizeHorizontal;
  static double blockSizeVertical;
  final double textScaleFactor = 0.6;

  void init(BuildContext context) {

    /*Handle multi-screen size widget density dynamically*/
    /*Use for setting width and height for any widget as per screen size*/
    mediaQueryData = MediaQuery.of(context);

    /*Get total screen height */
    screenHeight = mediaQueryData?.size.height;
    /*Get total screen width */
    screenWidth = mediaQueryData?.size.width;



    /*Get total blocks size honrizontally*/
    blockSizeHorizontal = screenWidth / 100;
    /*Get total blocks size vertically*/
    blockSizeVertical = screenHeight / 100;


    /*Handle text size dynamically.
    *This will restrict the text size in specific range.
    *device font size setting does not reflect in app*/
    /*Scale text as per device configuration*/
    print("TextScaleFactor default" + mediaQueryData.textScaleFactor.toString());
    final mqDataNew = mediaQueryData.copyWith(
        textScaleFactor: mediaQueryData.textScaleFactor > 1.0 ? 1.0 : textScaleFactor);

    int size;
   if(screenWidth <600)
   {
     size= 5;
     AppString.ExtraLargeFont = 20.0-size;
     AppString.LargeFont = 16.0 -size +3;
     AppString.MediumFont = 12.0 -size+3;
     AppString.SmallFont = 10.0 -size+4;
   }

  }
}
