
import 'package:demo/base/app_base.dart';
import 'package:demo/network/request_param.dart';

class Feedback extends AppBase with RequestParam {


  Feedback.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    media = json['media'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['text'] = this.text;
    data['media'] = this.media;
    return data;
  }
}
