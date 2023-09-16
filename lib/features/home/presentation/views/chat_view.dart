import 'package:chat_app/features/home/presentation/views/widgets/person_pic.dart';
import 'package:flutter/material.dart';
import 'widgets/custom_divider.dart';
import 'widgets/custom_text_field.dart';
import 'widgets/list_of_messages.dart';

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
              child: Row(
                children: [
                  Text(
                    'Chat Name',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(right: 20.0),
                    child: PersonPic(),
                  ),
                ],
              ),
            ),
            CustomDivider(),
            ListOfChatBubbles(),
            CustomDivider(),
            CustomTextField(),
          ],
        ),
      ),
    );
  }
}


