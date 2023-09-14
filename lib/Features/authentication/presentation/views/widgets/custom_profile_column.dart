import 'package:auth_mobile_app/Features/authentication/presentation/views/login_view.dart';
import 'package:auth_mobile_app/Features/authentication/presentation/views/widgets/custom_profile_container.dart';
import 'package:flutter/material.dart';
import 'custom_button.dart';
import 'custom_text_field_content_row.dart';


class CustomProfileColumn extends StatelessWidget {
  const CustomProfileColumn({super.key});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
      child: Column(
        children: [
          const CustomTextFieldContentRow(text: "Username"),
          const CustomProfileContainer(
            text: '',

          ),
          const SizedBox(
            height: 22,
          ),
          const CustomTextFieldContentRow(text: "Email"),
      const CustomProfileContainer(
        text: '',

      ),
          const SizedBox(
            height: 22,
          ),
          const CustomTextFieldContentRow(text: "Password"),
          const CustomProfileContainer(
            text: '',

          ),
          const SizedBox(
            height: 22,
          ),

          CustomButton(
            color: const Color(0xFFDC3545),
              text: 'Log out',
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginView()));

              }),
          const SizedBox(
            height: 22,
          ),

        ],
      ),
    );
  }
}
