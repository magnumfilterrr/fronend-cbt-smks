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
    print(jsonDecode(response.body));

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

  // Future<Either<String, bool>> updateStatusUjian(
  //     String ujianId, String status) async {
  //   final authData = await AuthLocalDataSources().getAuthData();

  //   print(
  //       "Mengirim request update status ke ${Variables.baseUrl}/api/siswa/ujian/$ujianId/status");
  //   print("Dengan data: { status: $status }");

  //   final response = await http.put(
  //     Uri.parse('${Variables.baseUrl}/api/siswa/ujian/$ujianId/status'),
  //     headers: {
  //       'Content-Type': 'application/json',
  //       'Authorization': 'Bearer ${authData.accessToken}',
  //     },
  //     body: jsonEncode({'status': status}),
  //   );

  //   print("Response status: ${response.statusCode}");
  //   print("Response body: ${response.body}");

  //   if (response.statusCode == 200) {
  //     return const Right(true);
  //   } else {
  //     return const Left('Gagal memperbarui status ujian');
  //   }
  // }

  // Future<Either<String, String>> getStatusUjian(String ujianId) async {
  //   final authData = await AuthLocalDataSources().getAuthData();
  //   try {
  //     final response = await http.get(
  //       Uri.parse('${Variables.baseUrl}/ujian/status/$ujianId'),
  //       headers: {
  //         'Content-Type': 'application/json',
  //         'Authorization': 'Bearer ${authData.accessToken}',
  //       },
  //     );

  //     if (response.statusCode == 200) {
  //       return const Right('Berhasil mendapatkan status ujian');
  //     } else {
  //       return const Left("Gagal mendapatkan status ujian");
  //     }
  //   } catch (e) {
  //     return Left(e.toString());
  //   }
  // }
}
