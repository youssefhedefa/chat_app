import 'package:flutter/material.dart';

class PersonMessage extends StatelessWidget {
  const PersonMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width*0.58,
      child: Text(
        'Mohamed hassan far3 7elwan hello',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w300,
          color: Colors.grey.shade600,
        ),
      ),
    );
  }
}
