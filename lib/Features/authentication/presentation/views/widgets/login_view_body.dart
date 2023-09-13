import 'package:flutter/material.dart';
import 'custom_background.dart';
import 'custom_form.dart';
class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});



  @override
  Widget build(BuildContext context) {
    return   const SingleChildScrollView(
      child: Column(
        children: [
          CustomBackGround(),
          SizedBox(height: 25,),
          Text("Log in to your account",
              textAlign: TextAlign.center,


              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color(0xFF2A2B2E),
              )),
          CustomForm(),


        ],
      ),
    );
  }
}



