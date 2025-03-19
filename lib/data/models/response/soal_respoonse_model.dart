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
  final String? gambarPertanyaan;
  final PilihanJawaban pilihanJawaban;
  final String kunciJawaban;
  final String createdAt;

  Soal({
    required this.id,
    required this.ujianId,
    required this.pertanyaan,
    this.gambarPertanyaan,
    required this.pilihanJawaban,
    required this.kunciJawaban,
    required this.createdAt,
  });

  factory Soal.fromRawJson(String str) => Soal.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Soal.fromJson(Map<String, dynamic> json) => Soal(
        id: json["id"],
        ujianId: json["ujian_id"],
        pertanyaan: json["pertanyaan"],
        gambarPertanyaan: json["gambar_pertanyaan"] ?? "",
        pilihanJawaban: PilihanJawaban.fromJson(json["pilihan_jawaban"]),
        kunciJawaban: json["kunci_jawaban"],
        createdAt: json["created_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "ujian_id": ujianId,
        "pertanyaan": pertanyaan,
        "gambar_pertanyaan": gambarPertanyaan,
        "pilihan_jawaban": pilihanJawaban.toJson(),
        "kunci_jawaban": kunciJawaban,
        "created_at": createdAt,
      };
}

class PilihanJawaban {
  final A a;
  final A b;
  final A c;
  final A d;

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
        a: A.fromJson(json["a"]),
        b: A.fromJson(json["b"]),
        c: A.fromJson(json["c"]),
        d: A.fromJson(json["d"]),
      );

  Map<String, dynamic> toJson() => {
        "a": a.toJson(),
        "b": b.toJson(),
        "c": c.toJson(),
        "d": d.toJson(),
      };
}

class A {
  final String teks;
  final String? gambar;

  A({
    required this.teks,
    this.gambar,
  });

  factory A.fromRawJson(String str) => A.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory A.fromJson(Map<String, dynamic> json) => A(
        teks: json["teks"],
        gambar: json["gambar"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "teks": teks,
        "gambar": gambar,
      };
}
