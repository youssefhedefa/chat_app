import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'my_routes.dart';

class FireBaseMethods
{
  static Future<void> registerUser(BuildContext context,String email, String password) async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    ); //credential
    showSuccessMessageToSignIn(context);
  }

  static Future<void> logInUser(BuildContext context,String email, String password) async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    ); //credential
    showSuccessMessageToLogIn(context,email);
  }


  static void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  static void showSuccessMessageToSignIn(BuildContext context){
    showSnackBar(context, 'Success');
    Navigator.pushNamed(context, MyRoutes.kLogIn);
  }

  static void showSuccessMessageToLogIn(BuildContext context,String email){
    showSnackBar(context, 'Success');
    Navigator.pushNamed(context, MyRoutes.kHome, arguments: email);
  }

}