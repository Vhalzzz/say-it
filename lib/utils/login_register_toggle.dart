import 'package:flutter/material.dart';
import 'package:say_it/pages/login_page.dart';
import 'package:say_it/pages/register_page.dart';

class ToggleUtils extends StatefulWidget {
  const ToggleUtils({super.key});

  @override
  State<ToggleUtils> createState() => _ToggleUtilsState();
}

class _ToggleUtilsState extends State<ToggleUtils> {
  bool showLogin = true;

  showLoginToggle() {
    setState(() {
      showLogin = !showLogin;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLogin) {
      return LoginPage(showRegisterPage: showLoginToggle);
    } else {
      return RegisterPage(showLoginPage: showLoginToggle);
    }
  }
}
