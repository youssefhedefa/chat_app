import 'package:flutter/material.dart';

class PersonName extends StatelessWidget {
  const PersonName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width*0.56,
      child: const Text(
        'Mohamed Hassan ',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
