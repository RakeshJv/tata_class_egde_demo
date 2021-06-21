import 'package:demo/base/app_base.dart';
import 'package:demo/model/metadata.dart';
import 'package:demo/model/solution.dart';
import 'package:demo/network/request_param.dart';

import 'data.dart';

class Question  extends AppBase with RequestParam {
  Metadata metadata;
  Data data;
  Solution solution;
  Solution style;


  Question.fromJson(Map<String, dynamic> json) {
    instructions = json[P_INSTRUCTIONS];
    metadata = json[P_METADATA] != null ? new Metadata.fromJson(json[P_METADATA]) : null;
    questionID = json[P_QUESTION_ID];
    data = json[P_DATA] != null ? new Data.fromJson(json[P_DATA]) : null;
    solution = json[P_SOLUTION] != null ? new Solution.fromJson(json[P_SOLUTION]) : null;
    attachment = json[P_ATTACHMENT];
    solutionStrategies = json[P_SOLUTION_STRATEGIES];
    style = json[P_STYLE] != null ? new Solution.fromJson(json[P_STYLE]) : null;
    type = json[P_TYPE];
    widgetType = json[P_WIGET_TYPE];
  }



}
