import 'package:flutter/material.dart';

class CustomMaterialButton extends StatelessWidget {
  const CustomMaterialButton({Key? key, required this.label, required this.onPressed}) : super(key: key);

  final String label;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Colors.black,
      minWidth: MediaQuery.of(context).size.width- (32*2),
      child: Text(
        label,
        style:const TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w500,
          height: 1.43,
        ),
      ),
    );
  }
}
