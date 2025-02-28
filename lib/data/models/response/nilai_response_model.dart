import 'dart:convert';

class NilaiResponseModel {
  final bool success;
  final String message;
  final Nilai data;

  NilaiResponseModel({
    required this.success,
    required this.message,
    required this.data,
  });

  factory NilaiResponseModel.fromRawJson(String str) =>
      NilaiResponseModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory NilaiResponseModel.fromJson(Map<String, dynamic> json) =>
      NilaiResponseModel(
        success: json["success"],
        message: json["message"],
        data: Nilai.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": data.toJson(),
      };
}

class Nilai {
  final int nilai;
  final int jawabanBenar;
  final int totalSoal;

  Nilai({
    required this.nilai,
    required this.jawabanBenar,
    required this.totalSoal,
  });

  factory Nilai.fromRawJson(String str) => Nilai.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Nilai.fromJson(Map<String, dynamic> json) => Nilai(
        nilai: json["nilai"] ?? 0,
        jawabanBenar: json["jawaban_benar"] ?? 0,
        totalSoal: json["total_soal"] ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "nilai": nilai,
        "jawaban_benar": jawabanBenar,
        "total_soal": totalSoal,
      };
}
