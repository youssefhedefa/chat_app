
import 'package:flutter/material.dart';
import 'widgets/custom_chat_list.dart';
import 'widgets/custom_divider.dart';
import 'widgets/custom_search_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key, required this.email}) : super(key: key);

  final String email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
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
            const CustomDivider(),
            const CustomSearchBar(),
            CustomChatsList(email: email,),
          ],
        ),
      ),
    );
  }
}

