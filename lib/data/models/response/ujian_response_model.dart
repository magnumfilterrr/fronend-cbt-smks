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

  factory UjianResponseModel.fromJson(Map<String, dynamic> json) => UjianResponseModel(
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
  final int mataPelajaranId;
  final int kelasId;
  final String judulUjian;
  final DateTime tanggalUjian;
  final int durasiUjian;
  final DateTime createdAt;
  final DateTime updatedAt;

  Ujian({
    required this.id,
    required this.mataPelajaranId,
    required this.kelasId,
    required this.judulUjian,
    required this.tanggalUjian,
    required this.durasiUjian,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Ujian.fromRawJson(String str) => Ujian.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Ujian.fromJson(Map<String, dynamic> json) => Ujian(
    id: json["id"],
    mataPelajaranId: json["mata_pelajaran_id"],
    kelasId: json["kelas_id"],
    judulUjian: json["judul_ujian"],
    tanggalUjian: DateTime.parse(
        json["tanggal_ujian"].replaceAll(" ", "T") + "Z"), // Format ke ISO 8601
    durasiUjian: json["durasi_ujian"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
);

  Map<String, dynamic> toJson() => {
        "id": id,
        "mata_pelajaran_id": mataPelajaranId,
        "kelas_id": kelasId,
        "judul_ujian": judulUjian,
        "tanggal_ujian": tanggalUjian.toIso8601String(),
        "durasi_ujian": durasiUjian,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
