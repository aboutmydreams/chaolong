class ExamData {
  String total;
  List<Datalist> datalist;

  ExamData({this.total, this.datalist});

  ExamData.fromJson(Map<String, dynamic> json) {
    total = json['total'];
    if (json['datalist'] != null) {
      datalist = new List<Datalist>();
      json['datalist'].forEach((v) {
        datalist.add(new Datalist.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total'] = this.total;
    if (this.datalist != null) {
      data['datalist'] = this.datalist.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Datalist {
  String id;
  String question;
  String answer;
  String option1;
  String option2;
  String option3;
  String option4;
  String explains;
  String url;
  String chapter;
  String type;

  Datalist(
      {this.id,
      this.question,
      this.answer,
      this.option1,
      this.option2,
      this.option3,
      this.option4,
      this.explains,
      this.url,
      this.chapter,
      this.type});

  Datalist.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    question = json['question'];
    answer = json['answer'];
    option1 = json['option1'];
    option2 = json['option2'];
    option3 = json['option3'];
    option4 = json['option4'];
    explains = json['explains'];
    url = json['url'];
    chapter = json['chapter'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['question'] = this.question;
    data['answer'] = this.answer;
    data['option1'] = this.option1;
    data['option2'] = this.option2;
    data['option3'] = this.option3;
    data['option4'] = this.option4;
    data['explains'] = this.explains;
    data['url'] = this.url;
    data['chapter'] = this.chapter;
    data['type'] = this.type;
    return data;
  }
}