import 'package:demo/util/ScreenConfig.dart';
import 'package:demo/util/app_colors.dart';
import 'package:demo/util/app_string.dart';
import 'package:demo/util/app_theme.dart';
import 'package:demo/view/utils/wigets/header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddVideoNotesDialog extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AddVideoNotesDialog();
  }
}

class _AddVideoNotesDialog extends State<AddVideoNotesDialog>{
  TextEditingController notes = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ScreenConfig().init(context);
    return Dialog(
      insetPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
      backgroundColor: AppTheme.appBackgroundColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50.0),
          bottomRight: Radius.circular(50.0),
          topLeft:Radius.circular(50.0))),
      child: Container(
        height: ScreenConfig.blockSizeVertical * 50,
        width: ScreenConfig.blockSizeHorizontal * 90,
        child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(bottom: Radius.circular(50.0),top:Radius.circular(50.0)),
                  color: Colors.white,
                ),
                child: Stack(
                  children: <Widget>[
                    Container(
                        padding: EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("  Notes",
                                        style: TextStyle(
                                          fontFamily: AppString.APP_FONT,
                                          fontWeight: FontWeight.normal,
                                          fontSize: 25,
                                          color: COLORS.MARUNCOLOR,
                                        )),
                                    IconButton(
                                      icon: new Icon(Icons.close_rounded,
                                          size: 25, color: Colors.black),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    )
                                  ],
                                ),
                              ),
                              //Container(height: ScreenConfig.blockSizeVertical * 0.1, color: COLORS.hexToColor(COLORS.marunColor)),
                              SizedBox(height: ScreenConfig.blockSizeVertical * 5),
                              TextFormField(
                                controller: notes,
                                textInputAction: TextInputAction.done,
                                keyboardType: TextInputType.text,
                                maxLines: 10,
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.black),
                                        gapPadding:0.0
                                    )
                                ),
                                onChanged: (String data){
                                },
                              ),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children:[
                                    Container(
                                      margin: new EdgeInsets.symmetric(
                                          horizontal: COLORS.mainPadding,
                                          vertical: COLORS.mainPadding
                                      ),
                                      child: FlatButton(
                                        padding: EdgeInsets.all(0),
                                        color: COLORS.salmonMain.withOpacity(0.5),
                                        child: Text("Submit",style: TextStyle(color: COLORS.MARUNCOLOR,fontSize: 20,
                                        fontWeight: FontWeight.normal),),
                                        shape: new RoundedRectangleBorder(
                                          side: BorderSide(color: Colors.black),
                                          borderRadius: new BorderRadius.circular(10.0),
                                        ),
                                        onPressed: () {
                                          debugPrint("Menu pressed");
                                        },
                                      ),
                                    ),]
                              ),
                              Expanded(
                                child: SingleChildScrollView(
                                    child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [])),)]))
                  ],
                ),
              ),
            ]
        ),
      )

      );
  }

}