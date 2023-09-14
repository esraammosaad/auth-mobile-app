import 'package:flutter/material.dart';

class CustomDoNotHaveAnAccountRow extends StatelessWidget {
  const CustomDoNotHaveAnAccountRow({Key? key, required this.textOne, required this.textTwo, required this.onTap}) : super(key: key);
  final String textOne;
  final String textTwo;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Text(
          textOne,
          style: const TextStyle(
              fontSize: 14,
              color: Color(0xFF2A2B2E),
              fontWeight: FontWeight.w400),
        ),
        const SizedBox(
          width: 6,
        ),
        GestureDetector(
          onTap: onTap,
          child:  Text(
            textTwo,
            style: const TextStyle(
                decoration: TextDecoration.underline,
                decorationColor: Color(0xFF4F90F0),
                decorationThickness: 2,
                fontSize: 14,
                color: Color(0xFF2A2B2E),
                fontWeight: FontWeight.w700),
          ),
        ),
      ],
    );
  }
}
