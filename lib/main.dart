import 'package:flutter/material.dart';
import 'package:notesapp/src/core/utils/theme_utils.dart';
import 'package:notesapp/src/features/login/presentation/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NotesApp',
      theme: ThemeUtils.themeData,
      home: const LoginPage(),
    );
  }
}
