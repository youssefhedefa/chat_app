import 'package:chat_app/core/utils/my_collections.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({Key? key}) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  CollectionReference messages =
      FirebaseFirestore.instance.collection(MyCollections.messageCollections);

  TextEditingController textController = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  void _onButtonPressed() {
    // Dismiss the keyboard when the button is pressed
    _focusNode.unfocus();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 18.0,
        right: 18,
        top: 16,
        bottom: 12,
      ),
      child: SizedBox(
        height: 50,
        child: TextField(
          controller: textController,
          focusNode: _focusNode,
          onSubmitted: (message) {
            messages.add({
              'message': message,
              'date': DateTime.now().toString(),
            });
            textController.clear();
            _onButtonPressed();
          },

          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            suffixIcon: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 40,
                  width: 1,
                  color: Colors.grey.shade400,
                ),
                IconButton(
                  onPressed: () {
                    messages.add({
                      'message': textController.text.toString(),
                      'date': DateTime.now().toString(),
                    });
                    textController.clear();
                    _onButtonPressed();
                  },
                  icon: const Icon(
                    Icons.send,
                    color: Colors.blueAccent,
                  ),
                ),
              ],
            ),
            hintText: 'send a message'
          ),
        ),
      ),
    );
  }
}
