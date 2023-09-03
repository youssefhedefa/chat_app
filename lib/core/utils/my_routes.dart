import 'package:chat_app/features/login/presentation/views/log_in_view.dart';
import 'package:chat_app/features/signin/presentation/view/register_view.dart';
import 'package:flutter/material.dart';

class MyRoutes
{
  static const kLogIn = '/LogIn';
  static const kSignIn = '/SignIn';


  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch(settings.name)
    {
      case '/':
        return MaterialPageRoute(builder: (context) => const LogInView(),);
      case kSignIn:
        return MaterialPageRoute(builder: (context) => const RegisterView(),);
      case kLogIn:
        return MaterialPageRoute(builder: (context) => const LogInView(),);

    }


    return MaterialPageRoute(
      builder: (context) => const Scaffold(
        body: Text('no route defined'),
      ),
    );
  }
}