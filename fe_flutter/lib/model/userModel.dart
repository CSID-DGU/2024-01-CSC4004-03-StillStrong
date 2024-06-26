class User {
  String? userId;
  String? secretEmail;
  bool? userGender;
  String? userNickname;
  String? secretPassword;
  int? userAge;
  List<String>? userFavorites;
  List<String>? userAllergies;
  String? userImage;
  bool? alarm;

  User(
      {
        this.userId,
        this.secretEmail,
        this.userGender,
        this.userNickname,
        this.secretPassword,
        this.userAge,
        this.userFavorites,
        this.userAllergies,
        this.userImage,
        this.alarm,
      });

  User.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    secretEmail = json['secretEmail'];
    userGender = json['userGender'];
    userNickname = json['userNickname'];
    secretPassword = json['secretPassword'];
    userAge = json['userAge'];
    userFavorites = json['favorites'] != null ? List<String>.from(json['favorites']) : null;
    userAllergies = json['allergies'] != null ? List<String>.from(json['allergies']) : null;
    userImage = json['userImage'];
    alarm = json['alarm'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['secretEmail'] = this.secretEmail;
    data['userGender'] = this.userGender;
    data['userNickname'] = this.userNickname;
    data['secretPassword'] = this.secretPassword;
    data['userAge'] = this.userAge;
    data['favorites'] = this.userFavorites;
    data['allergies'] = this.userAllergies;
    data['userImage'] = this.userImage;
    data['alarm'] = this.alarm;
    return data;
  }
  Map<String, dynamic> toJsonForEdit() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['userNickname'] = userNickname;
    data['userAge'] = userAge;
    data['userGender'] = userGender;
    data['userImage'] = userImage;
    data['alarm'] = alarm;
    data['secretEmail'] = secretEmail;

    return data;
  }
}