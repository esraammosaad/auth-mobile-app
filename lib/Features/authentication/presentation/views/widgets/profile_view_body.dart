import 'package:auth_mobile_app/Features/authentication/presentation/views/widgets/custom_profile_column.dart';
import 'package:auth_mobile_app/Features/authentication/presentation/views/widgets/custom_text_field_content_row.dart';
import 'package:auth_mobile_app/core/utilis/assets.dart';
import 'package:flutter/material.dart';
import 'custom_background.dart';
import 'custom_login_form.dart';
class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});



  @override
  Widget build(BuildContext context) {
    return    SingleChildScrollView(
      child: Column(
        children: [
          CustomBackGround(image:AssetsData.image ),
          const SizedBox(height: 25,),
          const Text("Ahmed Saber",
              textAlign: TextAlign.center,


              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color(0xFF2A2B2E),
              )),
          const CustomProfileColumn(),


        ],
      ),
    );
  }
}



