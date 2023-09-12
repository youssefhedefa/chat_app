import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 24.0,
        left: 20,
        right: 20,
        bottom: 24,
      ),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: Colors.grey.shade500,
            ),
          ),
          hintText: 'Who you want to talk ?',
          suffixIcon: Icon(
            Icons.search,
            color: Colors.grey.shade500,
          ),
        ),
      ),
    );
  }
}
