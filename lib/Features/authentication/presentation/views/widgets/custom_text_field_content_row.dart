import 'package:flutter/material.dart';

class CustomTextFieldContentRow extends StatelessWidget {
  const CustomTextFieldContentRow({
    super.key, required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return  Row(

      children: [
        Text(
            text,

            style : const TextStyle(
              fontSize:14,

              fontWeight : FontWeight.w400,
              color : Color(0xFF808194),
            )
        ),
      ],
    );
  }
}

