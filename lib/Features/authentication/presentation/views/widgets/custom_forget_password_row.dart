import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class CustomForgetPasswordRow extends StatelessWidget {
  const CustomForgetPasswordRow({
    super.key,
  });

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
          style: TextStyle(color: Color(0xFF2A2B2E), fontSize: 14,fontWeight: FontWeight.w700),
        ),
        const Spacer(
          flex: 1,
        ),
        GestureDetector(
          onTap: () {
          },
          child: const Text(
            'Forget Password?',
            style: TextStyle(fontSize: 14, color: Color(0xFF2A2B2E),fontWeight: FontWeight.w700),
          ),
        ),
      ],
    );
  }
}
