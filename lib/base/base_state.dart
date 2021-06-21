import 'dart:convert';

import 'package:demo/util/app_colors.dart';
import 'package:demo/util/app_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';


abstract class BaseStatefulWidget extends StatefulWidget {
  BaseStatefulWidget({Key key}) : super(key: key);
}

abstract class BaseState<Page extends BaseStatefulWidget> extends State<Page> {


   Function appHomeOnTap;
   double width ;
   double height;
   String screenTitle ="";
   bool isHomeIconVisible =true;
   bool isLogoIconVisible =true;
   GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
   TextEditingController controller = new TextEditingController();
   bool isBackIconShowing =true;
   bool isSearchVisible =true;
   bool isCustomerListVisible =false;


   Widget showLogoutDialog( BuildContext context) {
    return
      InkWell(
      onTap: () async {
        bool result = await showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text('Confirmation'),
              content: Text('Do you want to exit?'),
              actions: <Widget>[
                new FlatButton(
                  onPressed: () {
                    Navigator.of(context, rootNavigator: true).pop(false);
                  },
                  child: Text('No'),
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.of(context, rootNavigator: true).pop(true);
                    //e dialog and returns true
                  },
                  child: Text('Yes'),
                ),
              ],
            );
          },
        );
      },
      child: Container(
          padding: EdgeInsets.only(right: 30),
          child: Icon(Icons.logout, size: 20, color: Colors.white)),
    );
  }



  void showSnackBar(BuildContext context , final String msg) {
    final snackBar = SnackBar(
      content:  Text(msg),
      backgroundColor: Colors.black,
      behavior: SnackBarBehavior.fixed,
      duration: const Duration(seconds: 2),
      action: SnackBarAction(
          label: '',
          textColor: Colors.white,
          onPressed: () {
            print('Done pressed!');
          }),
    );
    Scaffold.of(context).showSnackBar(snackBar);
  }
  void screenNavigation( Widget screen ,BuildContext context){
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>screen)).then(
            (value) {
          setState(() {});
        });
  }






}
