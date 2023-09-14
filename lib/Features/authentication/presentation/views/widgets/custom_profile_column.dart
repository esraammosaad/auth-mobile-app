import 'package:auth_mobile_app/Features/authentication/presentation/views/login_view.dart';
import 'package:auth_mobile_app/Features/authentication/presentation/views/widgets/custom_profile_container.dart';
import 'package:auth_mobile_app/constents.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../view_models/cubits/auth_cubit/auth_cubit.dart';
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
           CustomProfileContainer(
            text:BlocProvider.of<AuthCubit>(context).userData!.userName,

          ),
          const SizedBox(
            height: 22,
          ),
           const CustomTextFieldContentRow(text: "Email"),
       CustomProfileContainer(
        text: BlocProvider.of<AuthCubit>(context).userData!.email,

      ),
          const SizedBox(
            height: 22,
          ),
          const CustomTextFieldContentRow(text: "Gender"),
           CustomProfileContainer(
            text:BlocProvider.of<AuthCubit>(context).userData!.gender,

          ),
          const SizedBox(
            height: 22,
          ),

          CustomButton(
            color: const Color(0xFFDC3545),
              text:'Log out',
              onPressed: () async {
                final SharedPreferences prefs = await SharedPreferences.getInstance();
                prefs.remove(kUserName);
                prefs.remove(kPassword);
                BlocProvider.of<AuthCubit>(context).login(userName: '', password: '');
                Navigator.pushNamed(context, LoginView.loginId);


              }),
          const SizedBox(
            height: 22,
          ),

        ],
      ),
    );
  }
}
