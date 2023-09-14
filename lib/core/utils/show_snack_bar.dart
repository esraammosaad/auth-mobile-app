import 'package:flutter/material.dart';

import '../../Features/authentication/presentation/view_models/cubits/auth_cubit/auth_cubit.dart';

void showSnackBar(BuildContext context, AuthFailure state) {

  ScaffoldMessenger.of(context)
      .showSnackBar(SnackBar(content: Text(state.errMessage,),backgroundColor: Colors.red),);
}