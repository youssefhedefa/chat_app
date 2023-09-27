import 'package:flutter/material.dart';

import 'person_pic.dart';
class TitleBar extends StatelessWidget {
  const TitleBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        top: 16.0,
        left: 20.0,
        bottom: 16.0,
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
    );
  }
}
