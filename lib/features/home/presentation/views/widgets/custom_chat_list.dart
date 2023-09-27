import 'package:chat_app/core/utils/my_routes.dart';
import 'package:flutter/material.dart';

import 'chat_item.dart';
import 'custom_divider.dart';

class CustomChatsList extends StatelessWidget {
  const CustomChatsList({Key? key, required this.email}) : super(key: key);

  final String email;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        reverse: true,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) => MaterialButton(
          onPressed: ()
          {
            Navigator.pushNamed(context, MyRoutes.kChat, arguments: email);
          },
          padding: const EdgeInsets.all(0),
            child: const CustomChatItem(),
        ),
        separatorBuilder: (context, index) => const CustomDivider(),
        itemCount: 20,
      ),
    );
  }
}
