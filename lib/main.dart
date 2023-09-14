import 'package:auth_mobile_app/Features/authentication/presentation/view_models/cubits/auth_cubit/auth_cubit.dart';
import 'package:auth_mobile_app/Features/authentication/presentation/views/profile_view.dart';
import 'package:auth_mobile_app/Features/authentication/presentation/views/register_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'Features/authentication/presentation/views/login_view.dart';

void main(){
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthCubit>(
      create: (context) => AuthCubit(),
      child: MaterialApp(
        routes: {
          LoginView.loginId:(context)=>const LoginView(),
          RegisterView.registerId:(context)=>const RegisterView(),
          ProfileView.profileId:(context)=>const ProfileView(),



        },
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: 'inter',

          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const LoginView(),
      ),
    );
  }
}

