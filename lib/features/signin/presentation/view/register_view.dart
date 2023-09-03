import 'package:chat_app/core/utils/widgets/background_part.dart';
import 'package:flutter/material.dart';
import 'widgets/registration_information.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: BackGroundPart(
        child: RegistrationInformation(),
      ),
    );
  }
}
