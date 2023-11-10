import 'package:flutter/material.dart';
import 'package:notesapp/src/core/utils/route_utils.dart';
import 'package:notesapp/src/core/widgets/custom_scaffold_widget.dart';
import 'package:notesapp/src/core/widgets/privacy_policy_widget.dart';
import 'package:notesapp/src/core/widgets/custom_text_field_widget.dart';

import '../../../../core/utils/theme_utils.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
                const CustomTextFieldWidget(
                  prefixIcon: Icons.person,
                  label: 'Usuário',
                ),
                const SizedBox(height: 20),
                const CustomTextFieldWidget(
                  prefixIcon: Icons.lock,
                  label: 'Senha',
                ),
                const SizedBox(height: 35),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(RouteUtils.notesRoute);
                  },
                  style: ThemeUtils.loginButtonStyle,
                  child: const Text('Entrar'),
                ),
              ],
            ),
          ),
          const PrivacyPolicyWidget(),
        ],
      ),
    );
  }
}
