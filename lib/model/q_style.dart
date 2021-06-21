
import 'package:demo/base/app_base.dart';
import 'package:demo/network/request_param.dart';
import 'package:http/http.dart';

class QStyle extends AppBase with RequestParam {

  QStyle.fromJson(Map<String, dynamic> json) {
    bg = json[P_BG];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['bg'] = this.bg;
    return data;
  }
}
