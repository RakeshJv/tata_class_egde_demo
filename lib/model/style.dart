import 'package:demo/base/app_base.dart';
import 'package:demo/model/q_style.dart';
import 'package:demo/model/user_interaction.dart';
import 'package:demo/network/request_param.dart';

class Style extends AppBase with RequestParam {
  QStyle qStyle;
  UserInteraction userInteraction;


  Style.fromJson(Map<String, dynamic> json) {
    qStyle = json[P_Q_STYLE] != null ? new QStyle.fromJson(json[P_Q_STYLE]) : null;
    userInteraction = json[P_USER_INTER_ACTION] != null ? new UserInteraction.fromJson(json[P_USER_INTER_ACTION]) : null;
  }

}
