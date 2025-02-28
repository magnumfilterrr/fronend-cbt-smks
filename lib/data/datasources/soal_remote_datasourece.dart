import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:ujian_online_smks/core/constants/variables.dart';
import 'package:ujian_online_smks/data/datasources/auth_local_datasourece.dart';
import 'package:ujian_online_smks/data/models/response/nilai_response_model.dart';
import 'package:ujian_online_smks/data/models/response/soal_respoonse_model.dart';

class SoalRemoteDataSource {
  //get soal by id
  Future<Either<String, SoalResponseModel>> getUjianId(String id) async {
    final authData = await AuthLocalDataSources().getAuthData();
    print('Request to: ${Variables.baseUrl}/api/siswa/ujian/$id/soal');
    print('Ujian ID: $id');

    final response = await http.get(
        Uri.parse('${Variables.baseUrl}/api/siswa/ujian/$id/soal'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': 'Bearer ${authData.accessToken}',
        });

    print('Response Status: ${response.statusCode}');
    print('Response Body: ${response.body}');

    if (response.statusCode == 200 || response.statusCode == 201) {
      try {
        final Map<String, dynamic> jsonResponse = jsonDecode(response.body);
        return Right(SoalResponseModel.fromJson(jsonResponse));
      } catch (e) {
        return const Left('Error parsing JSON response');
      }
    } else {
      return const Left('Gagal');
    }
  }

  Future<Either<String, NilaiResponseModel>> answer(
      List<Map<String, dynamic>> jawabanList, String id) async {
    final authData = await AuthLocalDataSources().getAuthData();
    final body = {
      'jawaban': jawabanList,
    };

    print('Request to: ${Variables.baseUrl}/api/siswa/ujian/$id/jawaban');
    print('jawabanList: $jawabanList');
    final response = await http.post(
        Uri.parse('${Variables.baseUrl}/api/siswa/ujian/$id/jawaban'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': 'Bearer ${authData.accessToken}',
        },
        body: jsonEncode(body));

    print('Response Status: ${response.statusCode}');
    print('Response Body: ${response.body}');

    if (response.statusCode == 200 || response.statusCode == 201) {
      print("Jawaban berhasil dikirim: ${response.body}");
      try {
        final Map<String, dynamic> jsonResponse = jsonDecode(response.body);
        return Right(NilaiResponseModel.fromJson(jsonResponse));
      } catch (e) {
        return const Left('Error parsing JSON response');
      }
    } else {
      return Left('Answer Gagal: ${response.body}');
    }
  }

  Future<Either<String, Map<String, dynamic>>> sendJawaban(
    String id,
    List<Map<String, dynamic>> jawabanList,
  ) async {
    final authData = await AuthLocalDataSources().getAuthData();
    final url = Uri.parse('${Variables.baseUrl}/api/siswa/ujian/$id/jawaban');

    print('Request to: $url');
    print('jawabanList: $jawabanList');

    final response = await http.post(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': 'Bearer ${authData.accessToken}',
      },
      body: jsonEncode({
        'jawaban': jawabanList,
      }),
    );

    print('Response Status: ${response.statusCode}');
    print('Response Body: ${response.body}');

    if (response.statusCode == 200 || response.statusCode == 201) {
      print("Jawaban berhasil dikirim: ${response.body}");
      try {
        final Map<String, dynamic> jsonResponse = jsonDecode(response.body);
        if (jsonResponse['success'] == true) {
          return Right(jsonResponse); // Mengembalikan data sukses
        } else {
          return Left(jsonResponse['message'] ?? 'Gagal menyimpan jawaban');
        }
      } catch (e) {
        return const Left('Error parsing JSON response');
      }
    } else if (response.statusCode == 401) {
      return const Left('Token kedaluwarsa, silakan login kembali');
    } else {
      try {
        final Map<String, dynamic> errorResponse = jsonDecode(response.body);
        if (errorResponse.containsKey('message')) {
          return Left(errorResponse['message']);
        }
      } catch (_) {}
      return const Left('Gagal mengirim jawaban');
    }
  }

  Future<Either<String, NilaiResponseModel>> hitungNilai(
      String id, List<Map<String, dynamic>> jawabanList) async {
    final authData = await AuthLocalDataSources().getAuthData();

    print('Request to: ${Variables.baseUrl}/api/siswa/ujian/$id/jawaban');
    print('id akuyyy: $id ');
    final response = await http.post(
      Uri.parse('${Variables.baseUrl}/api/siswa/ujian/$id/jawaban'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': 'Bearer ${authData.accessToken}',
      },
      body: jsonEncode({'jawaban': jawabanList}),
    );

    print('Response Status: ${response.statusCode}');
    print('Response Body: ${response.body}');

    if (response.statusCode == 200 || response.statusCode == 201) {
      print("Jawaban berhasil dikirim: ${response.body}");
      try {
        final Map<String, dynamic> jsonResponse = jsonDecode(response.body);
        print("Data dari API: ${jsonResponse['data']}");
        return Right(NilaiResponseModel.fromJson(jsonResponse));
      } catch (e) {
        return const Left('Error parsing JSON response');
      }
    } else {
      return Left('Hitung Nilai Gagal = ${response.body}');
    }
  }
}
