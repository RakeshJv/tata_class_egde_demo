import 'package:demo/base/app_base.dart';
import 'package:demo/network/request_param.dart';

import 'data.dart';

class Solution extends AppBase with RequestParam {
  List<Data> data;
  String answer;
  bool stepNav;
  String type;

  Solution({this.data, this.answer, this.stepNav, this.type});

  Solution.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = new List<Null>();
      json[P_DATA].forEach((v) { data.add(new Data.fromJson(v)); });
    }
    answer = json[P_ANSWER];
    stepNav = json[P_STEP_NAV];
    type = json[P_TYPE];
  }


}