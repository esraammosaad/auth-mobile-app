import 'package:auth_mobile_app/Features/authentication/presentation/view_models/cubits/auth_cubit/auth_cubit.dart';
import 'package:auth_mobile_app/Features/authentication/presentation/views/widgets/custom_profile_column.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'custom_background.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomBackGround(
            image: Image.network(
              BlocProvider.of<AuthCubit>(context).userData!.image,
              height: 116,
              width: 116,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
              BlocProvider.of<AuthCubit>(context).userData!.firstName +
                  BlocProvider.of<AuthCubit>(context).userData!.lastName,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color(0xFF2A2B2E),
              )),
          const CustomProfileColumn(),
        ],
      ),
    );
  }
}
