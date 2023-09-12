import 'package:flutter/material.dart';

import 'widgets/custom_divider.dart';
import 'widgets/custom_text_field.dart';

class ChatView extends StatelessWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 8.0,
                left: 20,
                bottom: 20,
              ),
              child: Text(
                'Chat Name',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            CustomDivider(),
            Spacer(),
            CustomDivider(),
            CustomTextField(),
          ],
        ),
      ),
    );
  }
}

