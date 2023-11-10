import 'package:flutter/material.dart';
import 'package:notesapp/src/core/widgets/custom_scaffold_widget.dart';
import 'package:notesapp/src/features/login/presentation/widgets/auth_text_field_widget.dart';
import 'package:url_launcher/url_launcher.dart';

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
                const AuthTextFieldWidget(
                  prefixIcon: Icons.person,
                  label: 'Usuário',
                ),
                const SizedBox(height: 30),
                const AuthTextFieldWidget(
                  prefixIcon: Icons.lock,
                  label: 'Senha',
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {},
                  style: ThemeUtils.loginButtonStyle,
                  child: const Text('Entrar'),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () async {
                  final url = Uri.parse("https://www.google.com.br");
                  if (await canLaunchUrl(url)) {
                    launchUrl(url);
                  }
                },
                child: const Text(
                  'Política de privacidade',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
