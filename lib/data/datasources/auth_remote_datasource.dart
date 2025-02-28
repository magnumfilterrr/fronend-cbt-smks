// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:ujian_online_smks/core/constants/variables.dart';
import 'package:ujian_online_smks/data/datasources/auth_local_datasourece.dart';
import 'package:ujian_online_smks/data/models/request/login_request_model.dart';
import 'package:ujian_online_smks/data/models/request/register_request_model.dart';
import 'package:http/http.dart' as http;
import 'package:ujian_online_smks/data/models/response/auth_response_model.dart';

class AuthRemoteDataSource {
  Future<Either<String, AuthResponseModel>> register(
      RegisterRequestModel registerRequestModel) async {
    print('Request to: ${Variables.baseUrl}/api/register');

    final response = await http.post(
      Uri.parse('${Variables.baseUrl}/api/register'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(registerRequestModel.toJson()),
    );
    print('Response Status: ${response.statusCode}');
    print('Response Body: ${response.body}');

    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> jsonResponse = jsonDecode(response.body);
        return Right(AuthResponseModel.fromJson(jsonResponse));
      } catch (e) {
        return const Left('Error parsing JSON response');
      }
    } else {
      return const Left('Register Gagal');
    }
  }

  //login
  Future<Either<String, AuthResponseModel>> login(
      LoginRequestModel data) async {
    print('Request to: ${Variables.baseUrl}/api/login');
    final response = await http.post(
      Uri.parse('${Variables.baseUrl}/api/login'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(data.toJson()),
    );
    print('Response Status: ${response.statusCode}');
    print('Response Body: ${response.body}');
    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> jsonResponse = jsonDecode(response.body);
        return Right(AuthResponseModel.fromJson(jsonResponse));
      } catch (e) {
        return const Left('Error parsing JSON response');
      }
    } else {
      return const Left('Login Gagal');
    }
  }

  // fucntion for logout
  Future<Either<String, String>> logout() async {
    final authData = await AuthLocalDataSources().getAuthData();
    print('Request to: ${Variables.baseUrl}/api/logout');
    print('Token: ${authData.data}');
    final response = await http.post(
        Uri.parse('${Variables.baseUrl}/api/logout'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': 'Bearer ${authData.accessToken}',
        });
    print('Response Status: ${response.statusCode}');
    print('Response Body: ${response.body}');
    if (response.statusCode == 200) {
      return const Right('Logout Berhasil');
    } else {
      return const Left('Logout Gagal');
    }
  }
}
