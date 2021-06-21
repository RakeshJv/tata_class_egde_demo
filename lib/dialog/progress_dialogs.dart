
import 'package:flutter/material.dart';

class ProgressDialogs {
  static Future<void> showLoadingDialog(
      BuildContext context, GlobalKey key) async {
    return showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context)
        {
          return new WillPopScope(
              onWillPop: () async => false,
              child: SimpleDialog(
                  key: key,
                  backgroundColor: Colors.white,
                  children: <Widget>[
                    Center(   
                      child: Column(children: [
                        CircularProgressIndicator(),
                        Padding(
                          padding: EdgeInsets.only(top :5),
                          child:  Text("Loading Please wait..." ,textAlign: TextAlign.center,),
                        ),
                      ]),
                    )
                  ]));
        });
   }
}








