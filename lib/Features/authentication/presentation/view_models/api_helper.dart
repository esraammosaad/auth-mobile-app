import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../data/models/auth_model.dart';

class ApiHelper {
  Future<AuthModel> postData(
      {required String userName, required String password}) async {
    http.Response response = await http.post(Uri.parse('https://dummyjson.com/auth/login'), headers: { 'Content-Type': 'application/json' },
        body: jsonEncode(<String, String>{
          'username': userName,
          'password':password,

        }));
    Map<String, dynamic> data = jsonDecode(response.body);
    AuthModel userData=AuthModel.fromJson(data);



    return userData;
  }
}
