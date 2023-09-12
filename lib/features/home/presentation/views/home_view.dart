import 'package:flutter/material.dart';
import 'widgets/chat_item.dart';
import 'widgets/custom_divider.dart';
import 'widgets/custom_search_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 8.0,
                left: 20,
                bottom: 20,
              ),
              child: Text(
                'Chat Central',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            CustomDivider(),
            CustomSearchBar(),
            CustomChatItem(),
            //Tray()
          ],
        ),
      ),
    );
  }
}
