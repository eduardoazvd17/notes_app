class UserModel {
  final String login;
  final String password;

  UserModel({required this.login, required this.password});

  Map<String, dynamic> toMap() {
    return {
      'login': login,
      'password': password,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      login: map['login'],
      password: map['password'],
    );
  }
}
