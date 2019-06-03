class UserData {
  String error;
  String message;
  int status;
  String birthday;
  String jobposition;
  String truename;
  int joinRank;
  int activityRank;
  String photo;
  String email;
  String qq;
  String role;
  String major;
  String dateModify;
  String hometown;
  bool sex;
  String studentId;
  String beDepart;
  String lastloginIp;
  int userId;
  String college;
  String lastloginDate;
  String dormitory;
  String nickname;
  String department;
  bool isLunarBirthday;
  String phone;
  String idcard;
  String dateCreate;
  int pendant;
  String desc;
  double activity;
  String lastloginUa;
  String username;
  String bugaosuni;

  UserData(
      {this.error,
      this.message,
      this.status,
      this.birthday,
      this.jobposition,
      this.truename,
      this.joinRank,
      this.activityRank,
      this.photo,
      this.email,
      this.qq,
      this.role,
      this.major,
      this.dateModify,
      this.hometown,
      this.sex,
      this.studentId,
      this.beDepart,
      this.lastloginIp,
      this.userId,
      this.college,
      this.lastloginDate,
      this.dormitory,
      this.nickname,
      this.department,
      this.isLunarBirthday,
      this.phone,
      this.idcard,
      this.dateCreate,
      this.pendant,
      this.desc,
      this.activity,
      this.lastloginUa,
      this.username,
      this.bugaosuni});

  UserData.fromJson(Map<String, dynamic> json) {
    birthday = json['birthday'];
    jobposition = json['jobposition'];
    truename = json['truename'];
    joinRank = json['join_rank'];
    activityRank = json['activity_rank'];
    photo = json['photo'];
    email = json['email'];
    qq = json['qq'];
    role = json['role'];
    major = json['major'];
    dateModify = json['date_modify'];
    hometown = json['hometown'];
    sex = json['sex'];
    studentId = json['student_id'];
    beDepart = json['be_depart'];
    lastloginIp = json['lastlogin_ip'];
    userId = json['user_id'];
    college = json['college'];
    lastloginDate = json['lastlogin_date'];
    dormitory = json['dormitory'];
    nickname = json['nickname'];
    department = json['department'];
    isLunarBirthday = json['is_lunar_birthday'];
    phone = json['phone'];
    idcard = json['idcard'];
    dateCreate = json['date_create'];
    pendant = json['pendant'];
    desc = json['desc'];
    activity = json['activity'];
    lastloginUa = json['lastlogin_ua'];
    username = json['username'];

    error = "no error";
    status = 200;
    message = "no error";
    if (json.keys.contains("error")) {
      error = json['error'];
    }
    if (json.keys.contains("status")) {
      status = json['status'];
    }
    if (json.keys.contains("message")) {
      message = json['message'];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['birthday'] = this.birthday;
    data['jobposition'] = this.jobposition;
    data['truename'] = this.truename;
    data['join_rank'] = this.joinRank;
    data['activity_rank'] = this.activityRank;
    data['photo'] = this.photo;
    data['email'] = this.email;
    data['qq'] = this.qq;
    data['role'] = this.role;
    data['major'] = this.major;
    data['date_modify'] = this.dateModify;
    data['hometown'] = this.hometown;
    data['sex'] = this.sex;
    data['student_id'] = this.studentId;
    data['be_depart'] = this.beDepart;
    data['lastlogin_ip'] = this.lastloginIp;
    data['user_id'] = this.userId;
    data['college'] = this.college;
    data['lastlogin_date'] = this.lastloginDate;
    data['dormitory'] = this.dormitory;
    data['nickname'] = this.nickname;
    data['department'] = this.department;
    data['is_lunar_birthday'] = this.isLunarBirthday;
    data['phone'] = this.phone;
    data['idcard'] = this.idcard;
    data['date_create'] = this.dateCreate;
    data['pendant'] = this.pendant;
    data['desc'] = this.desc;
    data['activity'] = this.activity;
    data['lastlogin_ua'] = this.lastloginUa;
    data['username'] = this.username;
    data['status'] = this.status;
    data['error'] = this.error;
    return data;
  }
}

class AllowDoorRes {
  String message;
  String error;
  int status;

  AllowDoorRes({this.message, this.error, this.status});

  AllowDoorRes.fromJson(Map<String, dynamic> json) {
    error = "no error";
    status = 200;
    message = json['message'];
    if (json.keys.contains("error")) {
      error = json['error'];
    }
    if (json.keys.contains("status")) {
      status = json['status'];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    data['error'] = this.error;
    data['status'] = this.status;
    return data;
  }
}
