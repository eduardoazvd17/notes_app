import 'package:flutter/material.dart';

import '../../../../core/utils/theme_utils.dart';

class AuthTextFieldWidget extends StatelessWidget {
  final String label;
  final IconData prefixIcon;
  final void Function(String)? onChanged;
  final TextEditingController? controller;
  const AuthTextFieldWidget({
    super.key,
    required this.label,
    required this.prefixIcon,
    this.onChanged,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, bottom: 5),
            child: Text(label, style: ThemeUtils.labelTextStyle),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            child: TextField(
              controller: controller,
              onChanged: onChanged,
              decoration: InputDecoration(
                prefixIcon: Icon(prefixIcon),
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
