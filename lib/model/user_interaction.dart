

import 'package:demo/base/app_base.dart';
import 'package:demo/network/request_param.dart';

class UserInteraction extends AppBase with RequestParam{


 // UserInteraction({this.stylePrint, this.stylePreview, this.styleReview, this.styleAttempt});

  UserInteraction.fromJson(Map<String, dynamic> json) {
    stylePrint = json['stylePrint'];
    stylePreview = json['stylePreview'];
    styleReview = json['styleReview'];
    styleAttempt = json['styleAttempt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['stylePrint'] = this.stylePrint;
    data['stylePreview'] = this.stylePreview;
    data['styleReview'] = this.styleReview;
    data['styleAttempt'] = this.styleAttempt;
    return data;
  }
}
