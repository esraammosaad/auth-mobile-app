import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, required this.onPressed, required this.color});
  final String text;
  final VoidCallback onPressed;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: MaterialButton(
        onPressed: onPressed,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
        color: color,
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide:  BorderSide(color: color)),
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
