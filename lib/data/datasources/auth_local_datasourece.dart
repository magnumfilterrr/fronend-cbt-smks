import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:ujian_online_smks/data/models/response/auth_response_model.dart';

class AuthLocalDataSources {
  Future<void> saveAuthData(AuthResponseModel authResponseModel) async {
    final pref = await SharedPreferences.getInstance();
    String authData = jsonEncode(authResponseModel.toJson());
    await pref.setString('auth_data', authData);
  }

  Future<void> removeAuthData() async {
    final pref = await SharedPreferences.getInstance();
    await pref.remove('auth_data');
  }

  Future<AuthResponseModel> getAuthData() async {
    final pref = await SharedPreferences.getInstance();
    final authData = pref.getString('auth_data');
    // Jika data ada, konversikan dari JSON string ke objek AuthResponseModel
    return AuthResponseModel.fromJson(jsonDecode(authData!));
  }
}
