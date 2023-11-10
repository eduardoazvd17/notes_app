import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PrivacyPolicyWidget extends StatelessWidget {
  const PrivacyPolicyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
