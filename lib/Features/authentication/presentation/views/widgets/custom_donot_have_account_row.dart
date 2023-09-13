import 'package:flutter/material.dart';
class CustomDoNotHaveAnAccountRow extends StatelessWidget {
  const CustomDoNotHaveAnAccountRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(

      children: [
        const Text(
          "Don't have an account?",
          style: TextStyle(fontSize: 14, color: Color(0xFF2A2B2E),fontWeight: FontWeight.w400),
        ),
        const SizedBox(width: 6,),
        GestureDetector(
          onTap: (){},
          child: const Text(
            'Register',
            style:
            TextStyle(fontSize: 14, color: Color(0xFF2A2B2E),fontWeight: FontWeight.w700),
          ),
        ),
      ],
    );
  }
}
