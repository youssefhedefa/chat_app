import 'package:flutter/material.dart';

class SenderChatBubble extends StatelessWidget {
  const SenderChatBubble({Key? key, required this.message}) : super(key: key);

  final String message;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.75,
        margin: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          color: Color.fromRGBO(118, 143, 172, 1),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),
        child: Container(
          margin: const EdgeInsets.all(16),
          child:  Text(
              message,
          ),
        ),
      ),
    );
  }
}
