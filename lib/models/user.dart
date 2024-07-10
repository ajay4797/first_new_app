class UserModel {
  String? userID;
  String? userEmail;
  String? name;
  String? password;

  UserModel({required this.userEmail, required this.name, required this.password,required this.userID});

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(userID: map["userID"],userEmail: map["userEmail"], name: map["name"], password: map["password"]);
  }

  Map<String, dynamic> toMap() {
    return {"userEmail": userEmail, "name": name, "password": password, "userID":userID};
  }
}