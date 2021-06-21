
import 'package:demo/base/app_base.dart';
import 'package:demo/network/request_param.dart';

class Metadata extends AppBase with RequestParam {


  Metadata.fromJson(Map<String, dynamic> json) {
    templateReference = json[P_TEMPLATE_REFRENCE];
    name = json[P_NAME];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data[P_TEMPLATE_REFRENCE] = this.templateReference;
    data[P_NAME] = this.name;
    return data;
  }
}
