import 'package:flutter/material.dart';
import '../../../../../core/utils/assets.dart';
import 'custom_background.dart';
import 'custom_login_form.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomBackGround(
              image: Image.asset(
            AssetsData.logoImage,
            height: 116,
            width: 116,
          )),
          const SizedBox(
            height: 25,
          ),
          const Text("Log in to your account",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color(0xFF2A2B2E),
              )),
          const CustomLoginForm(),
        ],
      ),
    );
  }
}
