import 'package:flutter/material.dart';
import 'package:sign_in/presentation/signin_screen/signin_screen.dart';

class AppRoutes {
  static const String signinScreen = '/signin_screen';

  static Map<String, WidgetBuilder> routes = {
    signinScreen: (context) => SigninScreen()
  };
}
