import 'package:chat_app/features/home/presentation/manager/chatCubit/chat_cubit.dart';
import 'package:chat_app/features/home/presentation/manager/chatCubit/chat_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key, required this.email}) : super(key: key);

  final String email;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatCubit,ChatStates>(
        builder: (context,state) {
      var cCubit = BlocProvider.of<ChatCubit>(context);
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
            controller: cCubit.textController,
            focusNode: cCubit.focusNode,
            onSubmitted: (message) {
              submittedButton(cCubit);
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
                      if(cCubit.textController.text.toString() != '')
                      {
                        submittedButton(cCubit);
                      }
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
      );}
    );
  }

  void submittedButton(cCubit){
    cCubit.messages.add({
      'message': cCubit.textController.text.toString(),
      'date': DateTime.now().toString(),
      'email': email,
    });
    cCubit.textController.clear();
    cCubit.onButtonPressed();
    cCubit.goToBottom();
  }
}
