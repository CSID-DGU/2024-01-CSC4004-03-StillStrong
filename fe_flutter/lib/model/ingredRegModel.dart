class IngredReg {
  String? ingredientName;
  int? ingredientNum;
  String? createdDate;
  String? ingredientDeadLine;
  String? ingredientMemo;
  String? ingredientPlace;

  IngredReg(
      {this.ingredientName,
        this.ingredientNum,
        this.createdDate,
        this.ingredientDeadLine,
        this.ingredientMemo,
        this.ingredientPlace});

  IngredReg.fromJson(Map<String, dynamic> json) {
    ingredientName = json['ingredientName'];
    ingredientNum = json['ingredientNum'];
    createdDate = json['createdDate'];
    ingredientDeadLine = json['ingredientDeadLine'];
    ingredientMemo = json['ingredientMemo'];
    ingredientPlace = json['ingredientPlace'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ingredientName'] = this.ingredientName;
    data['ingredientNum'] = this.ingredientNum;
    data['createdDate'] = this.createdDate;
    data['ingredientDeadLine'] = this.ingredientDeadLine;
    data['ingredientMemo'] = this.ingredientMemo;
    data['ingredientPlace'] = this.ingredientPlace;
    return data;
  }
}

