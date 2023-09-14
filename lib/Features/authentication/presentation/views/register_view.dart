import 'package:auth_mobile_app/Features/authentication/presentation/views/widgets/login_view_body.dart';
import 'package:auth_mobile_app/Features/authentication/presentation/views/widgets/register_view_body.dart';
import 'package:flutter/material.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      resizeToAvoidBottomInset: true,
      body: RegisterViewBody(),
    );
  }
}
