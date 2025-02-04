import 'package:coding_minds_bootstrap/pages/home_page.dart';
import 'package:coding_minds_bootstrap/pages/login_or_register.dart';
import 'package:flutter/material.dart';
import 'package:coding_minds_bootstrap/auth.dart';

// After login/register, lead to "To Do" app

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Auth().authStateChanges,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return HomePage();
        }
        else {
          return const LoginPage();
        }
      }

    );
  }
}