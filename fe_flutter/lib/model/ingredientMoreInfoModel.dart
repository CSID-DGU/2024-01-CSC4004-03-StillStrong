
class IngredientMoreInfoModel {
  String ingredientPlace = '실내';
  String ingredientName = '사과';
  String createdDate = '2024-05-01';
  String ingredientDeadLine = '2024-05-06';
  int ingredientNum = 0;
  String ingredientMemo = '내꺼야';
  int ingredientId = 26;

  IngredientMoreInfoModel(Map<String, dynamic>? data) {

    ingredientPlace = data?['ingredientPlace'];
    ingredientName = data?['ingredientName'];
    createdDate = data?['createdDate'];
    ingredientDeadLine = data?['ingredientDeadline'];
    ingredientNum = data?['ingredientNum'];
    ingredientMemo = data?['ingredientMemo'];
    ingredientId = data?['ingredientId'];
  }

  IngredientMoreInfoModel.fromJson(Map<String, dynamic> json) {
    ingredientPlace = json['ingredientPlace'];
    ingredientName = json['ingredientName'];
    createdDate = json['createdDate'];
    ingredientDeadLine = json['ingredientDeadline'];
    ingredientNum = json['ingredientNum'];
    ingredientMemo = json['ingredientMemo'];
    ingredientId = json['ingredientId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ingredientPlace'] = ingredientPlace;
    data['ingredientName'] = ingredientName;
    data['createdDate'] = createdDate;
    data['ingredientDeadline'] = ingredientDeadLine;
    data['ingredientNum'] = ingredientNum;
    data['ingredientMemo'] = ingredientMemo;
    data['ingredientId'] = ingredientId;
    print(data);
    return data;
  }
}