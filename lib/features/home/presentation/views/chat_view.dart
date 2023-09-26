import 'package:chat_app/core/utils/my_collections.dart';
import 'package:chat_app/features/home/presentation/views/widgets/person_pic.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../../data/models/messageModel/message_model.dart';
import 'widgets/custom_divider.dart';
import 'widgets/custom_text_field.dart';
import 'widgets/list_of_messages.dart';

class ChatView extends StatelessWidget {
  const ChatView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    CollectionReference messages =
        FirebaseFirestore.instance.collection(MyCollections.messageCollections);

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            const Padding(
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
            const CustomDivider(),
            StreamBuilder<QuerySnapshot>(

              stream: messages.orderBy('date').snapshots(),
              builder: (context, snapshot) {
                if(snapshot.hasData)
                {
                  List<MessageModel> messages = [];
                  for(int i = 0 ; i < snapshot.data!.docs.length ; i++)
                  {
                    messages.add(MessageModel.fromJson(snapshot.data!.docs[i]));
                  }
                  print(messages.length);
                  return  ListOfChatBubbles(messages:messages);
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
            const CustomDivider(),
            const CustomTextField(),
          ],
        ),
      ),
    );
  }
}
