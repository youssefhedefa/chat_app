import 'package:flutter/material.dart';

class NumberOfMessages extends StatelessWidget {
  const NumberOfMessages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Stack(
        children: [
          Container(
            width: 24,
            height: 24,
            color: Colors.blue,
          ),
          const Positioned(
            left: 7.5,
            top: 1,
            child: Text(
              '1',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
