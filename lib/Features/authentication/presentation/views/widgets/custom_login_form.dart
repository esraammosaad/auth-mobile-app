import 'package:auth_mobile_app/Features/authentication/presentation/view_models/cubits/auth_cubit/auth_cubit.dart';
import 'package:auth_mobile_app/Features/authentication/presentation/views/register_view.dart';
import 'package:auth_mobile_app/Features/authentication/presentation/views/widgets/custom_donot_have_account_row.dart';
import 'package:auth_mobile_app/constents.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../../core/utils/show_snack_bar.dart';
import '../profile_view.dart';
import 'custom_button.dart';
import 'custom_forget_password_row.dart';
import 'custom_text_field_content_row.dart';
import 'custom_text_form_field.dart';

class CustomLoginForm extends StatefulWidget {
  const CustomLoginForm({Key? key}) : super(key: key);

  @override
  State<CustomLoginForm> createState() => _CustomLoginFormState();
}

class _CustomLoginFormState extends State<CustomLoginForm> {
  bool isPassword = true;
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  @override
  void dispose() {
    userNameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthSuccess) {
          Navigator.pushNamed(context, ProfileView.profileId);
        } else if (state is AuthFailure) {
          showSnackBar(context, state);
        }
      },
      child: Form(
        key: formKey,
        autovalidateMode: autoValidateMode,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
          child: Column(
            children: [
              const CustomTextFieldContentRow(text: "Username"),
              CustomTextFormField(
                onSave: (value) {},
                onPressed: () {},
                isPassword: false,
                icon: FontAwesomeIcons.circleXmark,
                controller: userNameController,
              ),
              const SizedBox(
                height: 22,
              ),
              const CustomTextFieldContentRow(text: "Password"),
              CustomTextFormField(
                onSave: (value) {},
                isPassword: isPassword,
                onPressed: () {
                  isPassword = !isPassword;
                  setState(() {});
                },
                icon: isPassword
                    ? FontAwesomeIcons.eyeSlash
                    : FontAwesomeIcons.eye,
                controller: passwordController,
              ),
              const SizedBox(
                height: 22,
              ),
              const CustomForgetPasswordRow(text: 'Forget Password?'),
              const SizedBox(
                height: 22,
              ),
              CustomButton(
                  color: kPrimaryColor,
                  text: 'Log in',
                  onPressed: () {
                    validation(context);

                    autoValidateMode = AutovalidateMode.always;
                    setState(() {});
                  }),
              const SizedBox(
                height: 22,
              ),
              CustomDoNotHaveAnAccountRow(
                  textOne: "Don't have an account?",
                  textTwo: 'Register',
                  onTap: () {
                    Navigator.pushNamed(context, RegisterView.registerId);
                  }),
            ],
          ),
        ),
      ),
    );
  }

  void validation(BuildContext context) {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();

      BlocProvider.of<AuthCubit>(context).login(
          userName: userNameController.text, password: passwordController.text);
      updateSharedPreferences();
    }
  }

  Future<void> updateSharedPreferences() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(kUserName, userNameController.text);
    prefs.setString(kPassword, passwordController.text);
  }
}
