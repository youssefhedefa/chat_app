import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SenderChatBubble extends StatelessWidget {
  const SenderChatBubble({Key? key, required this.message, required this.date}) : super(key: key);

  final String message;
  final String date;


  @override
  Widget build(BuildContext context) {
    DateTime dateTime = DateTime.parse(date);

    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        //width: MediaQuery.of(context).size.width * 0.75,
        constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * 0.75,
        ),
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(message),
              Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  DateFormat('HH:mm:ss').format(dateTime),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
