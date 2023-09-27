
import 'package:chat_app/features/home/data/models/messageModel/message_model.dart';
import 'package:chat_app/features/home/presentation/manager/chatCubit/chat_cubit.dart';
import 'package:chat_app/features/home/presentation/manager/chatCubit/chat_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'received_chat_bubble.dart';
import 'sender_chat_bubble.dart';

class ListOfChatBubbles extends StatelessWidget {
  const ListOfChatBubbles({Key? key, required this.messages, required this.email}) : super(key: key);


  final List<MessageModel> messages;
  final String email;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatCubit,ChatStates>(
      builder: (context,state)
      {
        var cCubit = BlocProvider.of<ChatCubit>(context);
        return ListView.builder(
          reverse: true,
          controller: cCubit.scrollController,
          itemBuilder: (context, index) {
            if (messages[index].email == email) {
              return SenderChatBubble(
                message: messages[index].message,
              );
            } else {
              return ReceivedChatBubble(
                message: messages[index].message,
              );
            }
          },
          itemCount: messages.length,
          physics: const BouncingScrollPhysics(),
        );
      },
    );
  }
}
