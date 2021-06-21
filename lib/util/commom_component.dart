import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'app_colors.dart';
import 'app_string.dart';

class CommonComponent {

  static Padding text(String text, FontWeight fontWeight, double fontSize,
      List padding, Color color, TextOverflow overflow) {
    return Padding(
      padding: new EdgeInsets.only(
          left: padding[0],
          right: padding[1],
          top: padding[2],
          bottom: padding[3]),
      child: Text(
        text,
        textAlign: TextAlign.left,
        overflow: overflow,
        style: TextStyle(
          fontWeight: fontWeight,
          fontSize: fontSize,
          color: color,
        ),
      ),
    );
  }

  static Text getText(String text ,double fontSize,
      Color color,)
  {
      return Text(
        text,
         style: TextStyle(
           fontSize: fontSize,
          color: color,
        ),
    );
  }

  static AppBar getAppBar(Color color, String title) {
    return AppBar(
      backgroundColor: COLORS.APP_THEME_COLOR,
      title: Center(
        child: new Text(title.toUpperCase()),
      ),
      actions: <Widget>[],
    );
  }

  static CircularProgressIndicator circularProgress() {
    return CircularProgressIndicator(
      valueColor: new AlwaysStoppedAnimation<Color>(COLORS.APP_THEME_COLOR),
    );
  }

  static GestureDetector internetErrorText(Function callback) {
    return GestureDetector(
      onTap: () =>  callback,
      child: Center(
        child: Text(AppString.INTERNET_ERROR),
      ),
    );
  }


  static FlatButton retryButton(Function fetch) {
    return FlatButton(
      child: Text(
        AppString.INTERNET_ERROR_RETRY,
        textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(fontWeight: FontWeight.normal),
      ),
      onPressed: () => fetch(),
    );
  }

 static String _spiltImagePath(String partImage) {
    dynamic arr;
    if (partImage.contains("|")) {
      arr = partImage.split("|");
      print("IMAGE"+arr.toString());
      return arr[0];
    } else {
      return partImage;
    }
  }
/*
  Future<DateTime>? getDate(BuildContext context) {
    // Imagine that this function is
    // more complex and slow.
    return showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2018),
      lastDate: DateTime(2030),
      builder: (BuildContext context, Widget child) {
        return Theme(
          data: ThemeData.light(),
          child: child,
        );
      },
    );
  }*/

  static noRecordsFound(){
    return Center(
      child: Text('No Records Found',
          style: TextStyle(
              fontFamily: AppString.APP_FONT,
              fontSize: AppString.ExtraLargeFont,
              fontWeight: FontWeight.bold,
              color: COLORS.hexToColor(COLORS.tertiory),
          )
      ),
    );
  }


  static showErrorToastMsg(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        backgroundColor: Colors.red,
        fontSize: AppString.LargeFont,
        textColor: Colors.white,
        gravity: ToastGravity.BOTTOM);
  }


  static showSuccessToastMsg(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        backgroundColor: Colors.green,
        fontSize: AppString.LargeFont,
        textColor: Colors.white,
        gravity: ToastGravity.BOTTOM);
  }

  static showSnackbarPage(BuildContext context) {
    var snackBar = SnackBar(content: Text("Please check your Internet connection"));
    //ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }


}



