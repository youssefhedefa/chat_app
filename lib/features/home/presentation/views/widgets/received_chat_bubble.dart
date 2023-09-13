import 'package:flutter/material.dart';

class ReceivedChatBubble extends StatelessWidget {
  const ReceivedChatBubble({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.centerEnd,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.75,
        margin: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          color: Color.fromRGBO(118, 143, 172, 1),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
            bottomLeft: Radius.circular(20),
          ),
        ),
        child: Container(
          margin: const EdgeInsets.all(10),
          child: const Text(
            'Hi Hi Hi Hi Hi Hi Hi Hi Hi Hi Hi Hi Hi Hi Hi Hi Hi Hi Hi Hi Hi Hi Hi Hi Hi Hi Hi Hi Hi Hi Hi Hi Hi Hi Hi Hi Hi Hi Hi Hi Hi Hi Hi Hi Hi Hi Hi Hi Hi Hi Hi Hi Hi Hi Hi Hi Hi Hi ',
          ),
        ),
      ),
    );
  }
}
