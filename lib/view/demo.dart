

import 'package:demo/util/app_string.dart';
import 'package:demo/util/app_theme.dart';
import 'package:demo/util/size_config.dart';
import 'package:demo/view/home/home.dart';
import 'package:demo/view/home/quiz_screen.dart';
import 'package:demo/view/home/video_player_screen.dart';
import 'package:flutter/material.dart';

class Demo extends StatelessWidget {
  // This widget is the root of your application.
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
              title: 'Learning Platform Application',
              theme: AppTheme.lightTheme,
              home: Home(),

                routes: <String, WidgetBuilder> {
                 // AppString.ROUTE_DIRECT_HOME_SCREEN : (context) => new Home(),
                  AppString.ROUTE_DIRECT_HOME_SCREEN : (context) => new Home(),

                  AppString.ROUTE_DIRECT_VIDEO_PLAYER_SCREEN : (context) => new VideoPlayerScreen(),
                  AppString.ROUTE_DIRECT_QUIZ_SCREEN: (context) => new QuizScreen(),


                  /*
        '/addContract': (context) => RentalRequestList(),
        '/addAsset': (context) => RentalRequestList(),*/
                },
                onUnknownRoute: (RouteSettings setting) {
                  String unknownRoute = setting.name ;
                  print("unknownRoute---"+unknownRoute);
                  return new MaterialPageRoute(
                      builder: (context) => Home()
                  );
                }
            );
          },
        );
      },
    );
  }
}
