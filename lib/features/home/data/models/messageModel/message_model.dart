class MessageModel{

  MessageModel(this.message, this.email, this.date);
  final String message;
  final String email;
  final String date;

  factory MessageModel.fromJson(jsonData){
    return MessageModel(jsonData['message'],jsonData['email'],jsonData['date']);
  }


}