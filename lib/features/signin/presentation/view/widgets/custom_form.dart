import 'package:chat_app/core/utils/firebase_methods.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../../../login/presentation/views/widgets/custom_material_button.dart';
import '../../../../login/presentation/views/widgets/custom_text_form_field.dart';

class CustomForm extends StatefulWidget {
  const CustomForm({
    Key? key,
    required this.buttonLabel,
    this.emailValidator,
    this.passwordValidator, required this.viewName,
  }) : super(key: key);

  final String buttonLabel;
  final String viewName;
  final String? Function(String?)? emailValidator;
  final String? Function(String?)? passwordValidator;

  @override
  State<CustomForm> createState() => _CustomFormState();
}

class _CustomFormState extends State<CustomForm> {
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    String? password;
    String? email;
    return Form(
      key: formKey,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomTextFormField(
            label: 'Email',
            keyboardType: TextInputType.emailAddress,
            onChanged: (value) {
              email = value;
            },
            validator: widget.emailValidator,
          ),
          CustomTextFormField(
            label: 'Password',
            keyboardType: TextInputType.visiblePassword,
            onChanged: (value) {
              password = value;
            },
            validator: widget.passwordValidator,
          ),
          const SizedBox(
            height: 24,
          ),
          CustomMaterialButton(
            label: widget.buttonLabel,
            onPressed: () async {
              if (formKey.currentState!.validate()) {
                if(widget.viewName == 'sign in'){
                  try {
                    await FireBaseMethods.registerUser(
                        context, email!, password!);
                  } on FirebaseAuthException catch (e) {
                    if (e.code == 'weak-password') {
                      FireBaseMethods.showSnackBar(context, 'Weak password');
                    } else if (e.code == 'email-already-in-use') {
                      FireBaseMethods.showSnackBar(
                          context, 'Email already in use');
                    }
                  } catch (e) {
                    FireBaseMethods.showSnackBar(context, 'Try again');
                  }
                }
                else if(widget.viewName == 'log in') {
                  try {
                    await FireBaseMethods.logInUser(
                        context, email!, password!);
                  } on FirebaseAuthException catch (e) {
                    if (e.code == 'user-not-found') {
                      FireBaseMethods.showSnackBar(context, 'User Not Found');
                    } else if (e.code == 'wrong-password') {
                      FireBaseMethods.showSnackBar(
                          context, 'Wrong Password');
                    }
                    else
                    {
                      print(e.code.toString());
                    }
                  } catch (e) {
                    FireBaseMethods.showSnackBar(context, 'Try again');
                  }
                }

              }
            },
          ),
        ],
      ),
    );
  }
}
