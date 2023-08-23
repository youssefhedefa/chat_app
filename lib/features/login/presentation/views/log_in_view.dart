import 'package:chat_app/features/login/presentation/views/widgets/log_in_body.dart';
import 'package:flutter/material.dart';

class LogInView extends StatelessWidget {
  const LogInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: LogInBody(),
    );
  }
}
