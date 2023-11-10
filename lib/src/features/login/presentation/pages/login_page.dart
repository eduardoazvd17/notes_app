import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:notesapp/src/core/utils/route_utils.dart';
import 'package:notesapp/src/core/widgets/custom_scaffold_widget.dart';
import 'package:notesapp/src/core/widgets/privacy_policy_widget.dart';
import 'package:notesapp/src/core/widgets/custom_text_field_widget.dart';
import 'package:notesapp/src/features/login/data/models/user_model.dart';
import 'package:notesapp/src/features/login/presentation/controllers/login_controller.dart';

import '../../../../core/utils/theme_utils.dart';

class LoginPage extends StatelessWidget {
  final LoginController loginController;
  late final TextEditingController loginTextFieldController;
  late final TextEditingController passwordTextFieldController;
  late final FocusNode passwordTextFieldFocus;

  LoginPage({super.key, required this.loginController})
      : loginTextFieldController = TextEditingController(),
        passwordTextFieldController = TextEditingController(),
        passwordTextFieldFocus = FocusNode();

  void _makeLogin(BuildContext context, UserModel userModel) {
    if (loginController.validateUser(userModel.login) &&
        loginController.validatePassword(userModel.password)) {
      Navigator.of(context).pushNamed(RouteUtils.notesRoute);
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffoldWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextFieldWidget(
                  controller: loginTextFieldController,
                  onChanged: loginController.validateUser,
                  prefixIcon: Icons.person,
                  label: 'Usuário',
                  textInputAction: TextInputAction.next,
                  onSubmitted: (_) {
                    passwordTextFieldFocus.requestFocus();
                  },
                ).animate().slideY().fade(),
                Observer(
                  builder: (_) => Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
                    child: Text(
                      loginController.userValidationText ?? '',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.red[100]),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                CustomTextFieldWidget(
                  focusNode: passwordTextFieldFocus,
                  controller: passwordTextFieldController,
                  onChanged: loginController.validatePassword,
                  prefixIcon: Icons.lock,
                  label: 'Senha',
                  onSubmitted: (_) => _makeLogin(
                    context,
                    UserModel(
                      login: loginTextFieldController.text,
                      password: passwordTextFieldController.text,
                    ),
                  ),
                ).animate().slideX().fade(),
                Observer(
                  builder: (_) => Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
                    child: Text(
                      loginController.passwordValidationText ?? '',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.red[100]),
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                ElevatedButton(
                  onPressed: () => _makeLogin(
                    context,
                    UserModel(
                        login: loginTextFieldController.text,
                        password: passwordTextFieldController.text),
                  ),
                  style: ThemeUtils.loginButtonStyle,
                  child: const Text('Entrar'),
                ).animate().fade(),
              ],
            ),
          ),
          const PrivacyPolicyWidget(),
        ],
      ),
    );
  }
}
