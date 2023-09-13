import 'package:flutter/material.dart';

import 'received_chat_bubble.dart';
import 'sender_chat_bubble.dart';

class ListOfChatBubbles extends StatelessWidget {
  const ListOfChatBubbles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        child: ListView.builder(
          itemBuilder: (context, index) {
            if(index%3==1)
            {
              return const SenderChatBubble();
            }
            else
            {
              return const ReceivedChatBubble();
            }
          },
          itemCount: 20,
          physics: const BouncingScrollPhysics(),
        ),
      ),
    );
  }
}
