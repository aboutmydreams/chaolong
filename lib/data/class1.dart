class K1 {
  String question;
  String option1;
  String option2;
  String option3;
  String option4;
  String answer;
  String explain;
  String pic;
  String type;
  String chapter;

  K1(
      {this.question,
      this.option1,
      this.option2,
      this.option3,
      this.option4,
      this.answer,
      this.explain,
      this.pic,
      this.type,
      this.chapter});

  K1.fromJson(Map<String, dynamic> json) {
    question = json['question'];
    option1 = json['option1'];
    option2 = json['option2'];
    option3 = json['option3'];
    option4 = json['option4'];
    answer = json['answer'];
    explain = json['explain'];
    pic = json['pic'];
    type = json['type'];
    chapter = json['chapter'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['question'] = this.question;
    data['option1'] = this.option1;
    data['option2'] = this.option2;
    data['option3'] = this.option3;
    data['option4'] = this.option4;
    data['answer'] = this.answer;
    data['explain'] = this.explain;
    data['pic'] = this.pic;
    data['type'] = this.type;
    data['chapter'] = this.chapter;
    return data;
  }
}


class K4 {
  String id;
  String question;
  String answer;
  String item1;
  String item2;
  String item3;
  String item4;
  String explains;
  String url;

  K4(
      {this.id,
      this.question,
      this.answer,
      this.item1,
      this.item2,
      this.item3,
      this.item4,
      this.explains,
      this.url});

  K4.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    question = json['question'];
    answer = json['answer'];
    item1 = json['item1'];
    item2 = json['item2'];
    item3 = json['item3'];
    item4 = json['item4'];
    explains = json['explains'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['question'] = this.question;
    data['answer'] = this.answer;
    data['item1'] = this.item1;
    data['item2'] = this.item2;
    data['item3'] = this.item3;
    data['item4'] = this.item4;
    data['explains'] = this.explains;
    data['url'] = this.url;
    return data;
  }
}

