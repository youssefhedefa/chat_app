import 'package:chat_app/core/utils/my_routes.dart';
import 'package:flutter/material.dart';

import 'chat_item.dart';
import 'custom_divider.dart';

class CustomChatsList extends StatelessWidget {
  const CustomChatsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) => GestureDetector(
          onTap: ()
          {
            Navigator.pushNamed(context, MyRoutes.kChat);
          },
            child: const CustomChatItem(),
        ),
        separatorBuilder: (context, index) => const CustomDivider(),
        itemCount: 20,
      ),
    );
  }
}
