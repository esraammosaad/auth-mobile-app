import 'package:auth_mobile_app/Features/authentication/data/models/auth_model.dart';
import 'package:auth_mobile_app/Features/authentication/presentation/view_models/api_helper.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  AuthModel? userData;
  login({required String userName, required String password}) async {
    emit(AuthLoading());
    try {
      userData =
          await ApiHelper().postData(userName: userName, password: password);

      emit(AuthSuccess());
    } catch (e) {
      emit(AuthFailure(e.toString()));
    }
  }
}
