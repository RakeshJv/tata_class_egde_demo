
import 'package:demo/model/feedback.dart';

class Options  {
  List<Feedback> feedback;
  int score;
  String label;
  Null media;
  int value;
  int isCorrect;

  Options({this.feedback, this.score, this.label, this.media, this.value, this.isCorrect});

  Options.fromJson(Map<String, dynamic> json) {
    if (json['feedback'] != null) {
      feedback = new List<Feedback>();
      json['feedback'].forEach((v) { feedback.add(new Feedback.fromJson(v)); });
    }
    score = json['score'];
    label = json['label'];
    media = json['media'];
    value = json['value'];
    isCorrect = json['isCorrect'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.feedback != null) {
      data['feedback'] = this.feedback.map((v) => v.toJson()).toList();
    }
    data['score'] = this.score;
    data['label'] = this.label;
    data['media'] = this.media;
    data['value'] = this.value;
    data['isCorrect'] = this.isCorrect;
    return data;
  }
}
