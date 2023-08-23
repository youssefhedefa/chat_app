import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PanelText extends StatelessWidget {
  const PanelText({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: const Color(0xFF1E293B),
        fontSize: 32.sp,
        fontWeight: FontWeight.w800,
        letterSpacing: 1.28,
      ),
    );
  }
}
