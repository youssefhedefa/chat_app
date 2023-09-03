import 'package:chat_app/core/utils/widgets/welcom_panel_text.dart';
import 'package:chat_app/features/login/presentation/views/widgets/custom_social_media_container.dart';
import 'package:chat_app/features/signin/presentation/view/widgets/custom_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/my_assets.dart';

class RegistrationInformation extends StatelessWidget {
  const RegistrationInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          const PanelText(text: 'Sign In'),
          Expanded(
            child: SizedBox(
              height: 50.h,
            ),
          ),
          CustomForm(
            buttonLabel: 'Sign In',
            emailValidator: (value) {
              if (value!.isEmpty) {
                return 'email is required';
              }
              return null;
            },
            passwordValidator: (value) {
              if (value!.isEmpty) {
                return 'password is required';
              }
              return null;
            },
            viewName: 'sign in',
          ),
          const Expanded(
            child: SizedBox(
              height: 2,
            ),
          ),
          const Text(
            'Or continue with',
            style: TextStyle(
              color: Color(0xFF64748B),
              fontSize: 14,
              fontWeight: FontWeight.w400,
              height: 1.43,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomSocialMediaContainer(
                label: 'Google',
                iconName: MyAssets.google,
              ),
              CustomSocialMediaContainer(
                label: 'Facebook',
                iconName: MyAssets.facebook,
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
