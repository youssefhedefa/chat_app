class MessageModel{

  MessageModel(this.message);
  final String message;

  factory MessageModel.fromJson(jsonData){
    return MessageModel(jsonData['message']);
  }


}