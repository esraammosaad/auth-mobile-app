import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({Key? key, required this.controller, required this.icon, required this.isPassword, required this.onPressed, required this.onSave})
      : super(key: key);
  final TextEditingController controller ;

  final IconData icon;
  final bool isPassword;
  final VoidCallback onPressed;
  final void Function(String?)? onSave;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(fontSize: 14),
      onSaved: onSave,
      obscureText: isPassword,
      controller: controller,
      validator: (value) {
        if (value!.isEmpty) {
          return 'please enter a valid value';
        }
        return null;
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(  borderSide: const BorderSide(color: Color(0xff808194)),
            borderRadius: BorderRadius.circular(10)),

        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xff808194)),
            borderRadius: BorderRadius.circular(10)),
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xff808194)),
            borderRadius: BorderRadius.circular(10)),

        suffixIcon: IconButton(
          onPressed: onPressed,


          icon: FaIcon(icon,size: 20,),
          color:const Color(0xff808194),
        ),
      ),
    );
  }
}