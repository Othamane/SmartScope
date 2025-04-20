import 'package:flutter/material.dart';
import 'login_form.dart';
import 'signup_form.dart';

class AuthPage extends StatefulWidget {
  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool showLogin = true;

  void toggleForm() {
    setState(() {
      showLogin = !showLogin;
    });
  }

  @override
  Widget build(BuildContext context) {
    return showLogin
        ? LoginForm(onToggle: toggleForm)
        : SignupForm(onToggle: toggleForm);
  }
}
