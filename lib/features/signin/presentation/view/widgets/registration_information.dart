import 'package:chat_app/core/utils/widgets/welcom_panel_text.dart';
import 'package:chat_app/features/login/presentation/views/widgets/custom_social_media_container.dart';
import 'package:chat_app/features/login/presentation/views/widgets/custom_text_form_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/my_assets.dart';
import '../../../../login/presentation/views/widgets/custom_material_button.dart';

class RegistrationInformation extends StatelessWidget {
  const RegistrationInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? password;
    String? email;
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
          Form(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                CustomTextFormField(
                  label: 'Email',
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (value) {
                    email = value;
                  },
                ),
                CustomTextFormField(
                  label: 'Password',
                  keyboardType: TextInputType.visiblePassword,
                  onChanged: (value) {
                    password = value;
                  },
                ),
                const SizedBox(
                  height: 24,
                ),
                CustomMaterialButton(
                  label: 'Sign In',
                  onPressed: () async {
                    final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                        email: email!,
                        password: password!,
                    ); //credential
                    print(credential.user!.email.toString());
                  },
                ),
              ],
            ),
          ),
          const Expanded(
              child: SizedBox(
            height: 2,
          )),
          const Text(
            'Or continue with',
            style: TextStyle(
              color: Color(0xFF64748B),
              fontSize: 14,
              fontFamily: 'Roboto',
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
