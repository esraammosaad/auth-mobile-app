import 'package:auth_mobile_app/Features/authentication/presentation/view_models/cubits/auth_cubit/auth_cubit.dart';
import 'package:auth_mobile_app/Features/authentication/presentation/views/profile_view.dart';
import 'package:auth_mobile_app/Features/authentication/presentation/views/widgets/login_view_body.dart';
import 'package:auth_mobile_app/constents.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);
  static String loginId = 'LoginView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          state is AuthInitial ? checkPrefsForUser(context) : null;
          if (state is AuthLoading) {
            return const Center(child: CircularProgressIndicator(color: kPrimaryColor,));
          } else if (state is AuthSuccess) {
            return const ProfileView();
          } else {
            return const LoginViewBody();
          }
        },
      ),
    );
  }

  checkPrefsForUser(BuildContext context) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? userName = prefs.getString(kUserName);
    String? password = prefs.getString(kPassword);
    if (userName != null && password != null) {
      BlocProvider.of<AuthCubit>(context)
          .login(userName: userName, password: password);
    }
  }
}
