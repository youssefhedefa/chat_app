import 'package:chat_app/core/utils/clipper.dart';
import 'package:flutter/material.dart';

class BackGroundPart extends StatelessWidget {
  const BackGroundPart({Key? key, required this.child}) : super(key: key);
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            color: Color.fromRGBO(195, 219, 255, 1),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: ClipPath(
            clipper: ContainerClipper(),
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.35,),
          child: child,
        ),
      ],
    );
  }
}



