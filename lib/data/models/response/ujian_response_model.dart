import 'dart:convert';

class UjianResponseModel {
  final String status;
  final String message;
  final List<Ujian> data;

  UjianResponseModel({
    required this.status,
    required this.message,
    required this.data,
  });

  factory UjianResponseModel.fromRawJson(String str) =>
      UjianResponseModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UjianResponseModel.fromJson(Map<String, dynamic> json) =>
      UjianResponseModel(
        status: json["status"],
        message: json["message"],
        data: List<Ujian>.from(json["data"].map((x) => Ujian.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Ujian {
  final int id;
  final String judulUjian;
  final DateTime tanggalUjian;
  final int durasiUjian;
  final String status;
  final bool isCompleted;

  Ujian({
    required this.id,
    required this.judulUjian,
    required this.tanggalUjian,
    required this.durasiUjian,
    required this.status,
    required this.isCompleted,
  });

  factory Ujian.fromRawJson(String str) => Ujian.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Ujian.fromJson(Map<String, dynamic> json) => Ujian(
        id: json["id"],
        judulUjian: json["judul_ujian"],
        tanggalUjian: DateTime.parse(json["tanggal_ujian"]),
        durasiUjian: json["durasi_ujian"],
        status: json["status"],
        isCompleted: json["is_completed"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "judul_ujian": judulUjian,
        "tanggal_ujian": tanggalUjian.toIso8601String(),
        "durasi_ujian": durasiUjian,
        "status": status,
        "is_completed": isCompleted,
      };
}
