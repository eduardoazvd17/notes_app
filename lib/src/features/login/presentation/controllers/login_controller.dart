import 'package:mobx/mobx.dart';
part 'login_controller.g.dart';

class LoginController = LoginControllerBase with _$LoginController;

abstract class LoginControllerBase with Store {
  @observable
  String? userValidationText;

  @observable
  String? passwordValidationText;

  bool validateUser(String user) {
    if (user.isEmpty) {
      userValidationText = "Este campo deve ser preenchido.";
    } else if (user.length > 20) {
      userValidationText = "Seu usuário não pode ultrapassar 20 caracteres.";
    } else if (user.endsWith(' ')) {
      userValidationText =
          "Seu usuário não pode terminar com o caractere espaço.";
    } else {
      userValidationText = null;
    }
    return userValidationText == null;
  }

  bool validatePassword(String password) {
    final regexp = RegExp("[A-Za-z0-9]+");
    if (password.isEmpty) {
      passwordValidationText = "Este campo deve ser preenchido.";
    } else if (regexp.stringMatch(password) != password) {
      passwordValidationText =
          "Sua senha deve conter apenas caracteres entre a-Z e 0-9.";
    } else if (password.length < 2) {
      passwordValidationText = "Sua senha não pode ter menos de 2 caracteres.";
    } else if (password.length > 20) {
      passwordValidationText = "Sua senha não pode ultrapassar 20 caracteres.";
    } else if (password.endsWith(' ')) {
      passwordValidationText =
          "Sua senha não pode terminar com o caractere espaço.";
    } else {
      passwordValidationText = null;
    }
    return passwordValidationText == null;
  }
}
