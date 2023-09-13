import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, required this.onPressed});
 final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: MaterialButton(

        onPressed: onPressed,
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 12),
        color: const Color(0xFF007BFF),
        shape:  OutlineInputBorder(borderRadius: BorderRadius.circular(4),borderSide: const BorderSide(color: Color(0xFF007BFF))),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
