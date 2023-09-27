import 'package:chat_app/features/home/presentation/manager/chatCubit/chat_cubit.dart';
import 'package:chat_app/features/home/presentation/views/widgets/chat_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'widgets/custom_divider.dart';
import 'widgets/custom_text_field.dart';
import 'widgets/title_bar.dart';

class ChatView extends StatelessWidget {
  const ChatView({Key? key, required this.email}) : super(key: key);
  final String email;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChatCubit(),
      child: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              const TitleBar(),
              const CustomDivider(),
              ChatBody(email: email),
              const CustomDivider(),
              CustomTextField(email: email),
            ],
          ),
        ),
      ),
    );
  }
}
