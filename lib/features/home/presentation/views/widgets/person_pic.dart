import 'package:chat_app/core/utils/my_assets.dart';
import 'package:flutter/material.dart';

class PersonPic extends StatelessWidget {
  const PersonPic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image(
        width: 68,
        height: 68,
        fit: BoxFit.fill,
        image: AssetImage(MyAssets.testAvatar),
      ),
    );
  }
}
