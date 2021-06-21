
import 'package:demo/util/app_string.dart';
import 'package:flutter/material.dart';

extension ExtendedText on Text{

  Text setCustomTextStyle( double size ,BuildContext context) {
    final scaleFactor = MediaQuery.of(context).textScaleFactor;
    if (this is Text) {
      Text t = this;
      return Text(
        t.data,
        style:  TextStyle(fontFamily: AppString.APP_FONT,
            fontSize: size*scaleFactor,
            color: Colors.black),
      );
    }
    return null;
  }

  Text setCustomWithBoldTextStyle( FontWeight weight, Color color, double fontSize ,BuildContext context) {
    final scaleFactor = MediaQuery.of(context).textScaleFactor;
    if (this is Text) {
      Text t = this;
      return Text(
   t.data      ,
          style:  TextStyle(fontFamily: AppString.APP_FONT,
              fontSize: fontSize*scaleFactor,
              fontWeight:weight,
              color: color)
      );
    }
    return null;
  }
}