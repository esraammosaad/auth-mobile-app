import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomForgetPasswordRow extends StatelessWidget {
  const CustomForgetPasswordRow({
    super.key, required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const FaIcon(
          FontAwesomeIcons.square,
          color: Colors.grey,
          size: 14,
        ),
        const SizedBox(
          width: 3,
        ),
        const Text(
          'Remember me',
          style: TextStyle(
              color: Color(0xFF2A2B2E),
              fontSize: 14,
              fontWeight: FontWeight.w700),
        ),
        const Spacer(
          flex: 1,
        ),
        GestureDetector(
          onTap: () {},
          child:  Text(
            text,
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
