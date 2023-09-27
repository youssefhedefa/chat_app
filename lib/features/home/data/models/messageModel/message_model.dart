class MessageModel{

  MessageModel(this.message, this.email);
  final String message;
  final String email;

  factory MessageModel.fromJson(jsonData){
    return MessageModel(jsonData['message'],jsonData['email']);
  }


}