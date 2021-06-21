
import 'package:demo/base/app_base.dart';
import 'package:demo/network/request_param.dart';
import 'package:flutter/cupertino.dart';

class MicroConcept extends AppBase with RequestParam {

  MicroConcept.fromJson(Map<String, dynamic> json) {
    id = json[P_ID];
    label = json[P_LABEL];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data[P_ID] = this.id;
    data[P_LABEL] = this.label;
    return data;
  }
}
