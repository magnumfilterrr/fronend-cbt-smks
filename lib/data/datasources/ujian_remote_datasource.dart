import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:ujian_online_smks/core/constants/variables.dart';
import 'package:ujian_online_smks/data/datasources/auth_local_datasourece.dart';
import 'package:ujian_online_smks/data/models/response/ujian_response_model.dart';
import 'package:http/http.dart' as http;

class UjianRemoteDataSource {
  Future<Either<String, UjianResponseModel>> getUjian() async {
    final authData = await AuthLocalDataSources().getAuthData();
    print('Request to: ${Variables.baseUrl}/api/siswa/ujian');
    final response = await http.get(
        Uri.parse('${Variables.baseUrl}/api/siswa/ujian'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': 'Bearer ${authData.accessToken}',
        });

    print('Response Status: ${response.statusCode}');
    print('Response Body: ${response.body}');

    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> jsonResponse = jsonDecode(response.body);
        return Right(UjianResponseModel.fromJson(jsonResponse));
      } catch (e) {
        print('Error parsing JSON: $e');
        return const Left('Error parsing JSON response');
      }
    } else {
      return const Left('Gagal');
    }
  }
}
