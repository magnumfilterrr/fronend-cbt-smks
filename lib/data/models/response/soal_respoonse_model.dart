import 'dart:convert';

class SoalResponseModel {
  final String status;
  final String message;
  final List<Soal> data;

  SoalResponseModel({
    required this.status,
    required this.message,
    required this.data,
  });

  factory SoalResponseModel.fromRawJson(String str) =>
      SoalResponseModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SoalResponseModel.fromJson(Map<String, dynamic> json) =>
      SoalResponseModel(
        status: json["status"],
        message: json["message"],
        data: List<Soal>.from(json["data"].map((x) => Soal.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Soal {
  final int id;
  final int ujianId;
  final String pertanyaan;
  final PilihanJawaban pilihanJawaban;
  final String kunciJawaban;
  final DateTime createdAt;
  final DateTime updatedAt;

  Soal({
    required this.id,
    required this.ujianId,
    required this.pertanyaan,
    required this.pilihanJawaban,
    required this.kunciJawaban,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Soal.fromRawJson(String str) => Soal.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Soal.fromJson(Map<String, dynamic> json) => Soal(
        id: json["id"],
        ujianId: json["ujian_id"],
        pertanyaan: json["pertanyaan"],
        pilihanJawaban: PilihanJawaban.fromJson(json["pilihan_jawaban"]),
        kunciJawaban: json["kunci_jawaban"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "ujian_id": ujianId,
        "pertanyaan": pertanyaan,
        "pilihan_jawaban": pilihanJawaban.toJson(),
        "kunci_jawaban": kunciJawaban,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}

class PilihanJawaban {
  final String a;
  final String b;
  final String c;
  final String d;

  PilihanJawaban({
    required this.a,
    required this.b,
    required this.c,
    required this.d,
  });

  factory PilihanJawaban.fromRawJson(String str) =>
      PilihanJawaban.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PilihanJawaban.fromJson(Map<String, dynamic> json) => PilihanJawaban(
        a: json["a"],
        b: json["b"],
        c: json["c"],
        d: json["d"],
      );

  Map<String, dynamic> toJson() => {
        "a": a,
        "b": b,
        "c": c,
        "d": d,
      };
}
