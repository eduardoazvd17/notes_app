import 'package:flutter/material.dart';

import '../utils/theme_utils.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final String? label;
  final String? hint;
  final IconData? prefixIcon;
  final void Function(String)? onChanged;
  final TextEditingController? controller;
  final TextAlign textAlign;
  final bool obscureText;
  final void Function(String)? onSubmitted;
  final TextInputAction textInputAction;
  final FocusNode? focusNode;
  final bool autofocus;
  final bool enabled;

  const CustomTextFieldWidget({
    super.key,
    this.label,
    this.hint,
    this.prefixIcon,
    this.onChanged,
    this.controller,
    this.textAlign = TextAlign.left,
    this.obscureText = false,
    this.onSubmitted,
    this.textInputAction = TextInputAction.done,
    this.focusNode,
    this.autofocus = false,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (label != null)
            Padding(
              padding: const EdgeInsets.only(left: 10, bottom: 5),
              child: Text(label!, style: ThemeUtils.labelTextStyle),
            ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: TextField(
                enabled: enabled,
                obscureText: obscureText,
                autofocus: autofocus,
                focusNode: focusNode,
                controller: controller,
                onChanged: onChanged,
                textAlign: textAlign,
                onSubmitted: onSubmitted,
                keyboardType: TextInputType.text,
                textInputAction: textInputAction,
                decoration: InputDecoration(
                  hintText: hint,
                  hintStyle: ThemeUtils.boldTextStyle,
                  prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
