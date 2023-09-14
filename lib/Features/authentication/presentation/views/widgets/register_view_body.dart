import 'package:flutter/material.dart';
import '../../../../../core/utilis/assets.dart';
import 'custom_background.dart';
import 'custom_register_form.dart';
class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});



  @override
  Widget build(BuildContext context) {
    return    SingleChildScrollView(
      child: Column(
        children: [
          CustomBackGround(image: AssetsData.logoImage),
          const SizedBox(height: 25,),
          const Text("Create new account",
              textAlign: TextAlign.center,


              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color(0xFF2A2B2E),
              )),
          const CustomRegisterForm(),


        ],
      ),
    );
  }
}



