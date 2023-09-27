
import 'package:bloc/bloc.dart';
import 'package:chat_app/core/utils/my_collections.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'chat_states.dart';

class ChatCubit extends Cubit<ChatStates>{
  ChatCubit():super(ChatInitialState());

  CollectionReference messages =
  FirebaseFirestore.instance.collection(MyCollections.messageCollections);


  TextEditingController textController = TextEditingController();
  final FocusNode focusNode = FocusNode();
  ScrollController scrollController = ScrollController();


  void onButtonPressed() {
    // Dismiss the keyboard when the button is pressed
    focusNode.unfocus();
  }

  void goToBottom(){
    scrollController.jumpTo(
      0
    );
  }

}