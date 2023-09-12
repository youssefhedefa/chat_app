import 'package:flutter/material.dart';

import 'number_of_message.dart';
import 'person_message.dart';
import 'person_name.dart';
import 'person_pic.dart';
import 'time_of_message.dart';

class CustomChatItem extends StatelessWidget {
  const CustomChatItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:EdgeInsets.only(left: 22,right: 20,),
      child: SizedBox(
        height: 68,
        width: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PersonPic(),
            SizedBox(width: 16,),
            Padding(
              padding: EdgeInsets.only(top: 8.0,bottom: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PersonName(),
                  PersonMessage(),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(top: 8.0,bottom: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  NumberOfMessages(),
                  TimeOfMessage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
