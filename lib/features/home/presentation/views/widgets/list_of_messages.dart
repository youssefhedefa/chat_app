import 'package:chat_app/features/home/data/models/messageModel/message_model.dart';
import 'package:flutter/material.dart';

import 'received_chat_bubble.dart';
import 'sender_chat_bubble.dart';

class ListOfChatBubbles extends StatelessWidget {
  const ListOfChatBubbles({Key? key, required this.messages}) : super(key: key);

  final List<MessageModel> messages;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        child: ListView.builder(
          itemBuilder: (context, index) {
            if(index%2==0)
            {
              return SenderChatBubble(message: messages[index].message,);
            }
            else
            {
              return ReceivedChatBubble(message: messages[index].message,);
            }
          },
          itemCount: messages.length,
          physics: const BouncingScrollPhysics(),
        ),
      ),
    );
  }
}
