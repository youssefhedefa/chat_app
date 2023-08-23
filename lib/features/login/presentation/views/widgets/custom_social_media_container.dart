import 'package:flutter/material.dart';

class CustomSocialMediaContainer extends StatelessWidget {
  const CustomSocialMediaContainer({Key? key, required this.iconName, required this.label}) : super(key: key);

  final String iconName;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 141,
      height: 40,
      color:const Color.fromRGBO(242, 245, 249, 1),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.transparent,
              child: Image(image: AssetImage(iconName)),
            ),
            Text(
              label,
              style:const TextStyle(
                color: Color(0xFF475569),
                fontSize: 14,
                fontWeight: FontWeight.w400,
                height: 1.43,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
