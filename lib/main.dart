import 'dart:io';
import 'package:demo/view/demo.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';

import 'view/home/home.dart';


Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized(); /*await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);*/
  runApp(Demo());

}


