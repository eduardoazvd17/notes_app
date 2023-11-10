import 'package:flutter/material.dart';
import 'package:notesapp/src/core/utils/theme_utils.dart';

class CustomScaffoldWidget extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final Widget? child;
  const CustomScaffoldWidget({super.key, this.appBar, this.child});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            ThemeUtils.backgroundColor,
            ThemeUtils.secondaryBackgroundColor,
          ],
          stops: [0.5, 0.75],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: appBar,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: child ?? const SizedBox(),
          ),
        ),
      ),
    );
  }
}
