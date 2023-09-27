
import 'package:chat_app/features/home/data/models/messageModel/message_model.dart';
import 'package:chat_app/features/home/presentation/manager/chatCubit/chat_cubit.dart';
import 'package:chat_app/features/home/presentation/manager/chatCubit/chat_states.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'list_of_messages.dart';

class ChatBody extends StatelessWidget {
  const ChatBody({Key? key, required this.email}) : super(key: key);

  final String email;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatCubit,ChatStates>(
      builder: (context,state) {
        var cCubit = BlocProvider.of<ChatCubit>(context);
        return Expanded(
          child: StreamBuilder<QuerySnapshot>(
            stream: cCubit.messages.orderBy('date',descending: true).snapshots(),
            builder: (context, snapshot) {
              if(snapshot.hasData)
              {
                List<MessageModel> messages = [];
                for(int i = 0 ; i < snapshot.data!.docs.length ; i++)
                {
                  messages.add(MessageModel.fromJson(snapshot.data!.docs[i]));
                }
                return  ListOfChatBubbles(messages : messages,email: email,);
              }
              else
              {
                return const Column(
                  children: [
                    Spacer(),
                    Text('data'),
                  ],
                );
              }
            },
          ),
        );
      },
    );
  }
}
