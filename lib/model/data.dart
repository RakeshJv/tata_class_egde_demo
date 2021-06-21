
import 'package:demo/base/app_base.dart';
import 'package:demo/model/metadata.dart';
import 'package:demo/model/options.dart';
import 'package:demo/model/question.dart';
import 'package:demo/model/solution.dart';
import 'package:demo/network/request_param.dart';

class Data  extends AppBase with RequestParam{
  Metadata metadata;
  Solution solution;
  List<Options> options;
  Solution style;

  Data.fromJson(Map<String, dynamic> json) {
    stimulusMedia = json[P_STIMULUS_MEDIA];
    metadata = json[P_METADATA] != null ? new Metadata.fromJson(json[P_METADATA]) : null;
    solution = json[P_SOLUTION] != null ? new Solution.fromJson(json[P_SOLUTION]) : null;
    stimulus = json[P_STIMULAS];
    if (json[P_OPTIONS] != null) {
      options = new List<Options>();
      json[P_OPTIONS].forEach((v) { options.add(new Options.fromJson(v)); });
    }
    style = json[P_STYLE] != null ? new Solution.fromJson(json[P_STYLE]) : null;
    marks = json[P_MARKS];
    type = json[P_TYPE];
  }

}
