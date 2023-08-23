import 'package:flutter/material.dart';

import '../../../../../core/utils/widgets/background_part.dart';
import 'log_in_information_part.dart';

class LogInBody extends StatelessWidget {
  const LogInBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const BackGroundPart(child: LogInInformationPart());
  }
}
