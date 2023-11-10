import 'package:flutter/material.dart';
import 'package:notesapp/src/core/utils/route_utils.dart';
import 'package:notesapp/src/core/utils/theme_utils.dart';
import 'package:notesapp/src/features/login/presentation/controllers/login_controller.dart';
import 'package:notesapp/src/features/login/presentation/pages/login_page.dart';
import 'package:notesapp/src/features/notes/presentation/controllers/notes_controller.dart';
import 'package:notesapp/src/features/notes/presentation/pages/notes_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NotesApp',
      theme: ThemeUtils.themeData,
      initialRoute: RouteUtils.loginRoute,
      routes: {
        RouteUtils.loginRoute: (context) => LoginPage(
              loginController: LoginController(),
            ),
        RouteUtils.notesRoute: (context) => NotesPage(
              notesController: NotesController(),
            ),
      },
    );
  }
}
