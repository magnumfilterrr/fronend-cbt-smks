import 'dart:convert';

class RegisterRequestModel {
    final String name;
    final String email;
    final String password;
    final String role;
    final int kelasId;
    final String jurusan;

    RegisterRequestModel({
        required this.name,
        required this.email,
        required this.password,
        required this.role,
        required this.kelasId,
        required this.jurusan,
    });

    factory RegisterRequestModel.fromRawJson(String str) => RegisterRequestModel.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory RegisterRequestModel.fromJson(Map<String, dynamic> json) => RegisterRequestModel(
        name: json["name"],
        email: json["email"],
        password: json["password"],
        role: json["role"],
        kelasId: json["kelas_id"],
        jurusan: json["jurusan"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "email": email,
        "password": password,
        "role": role,
        "kelas_id": kelasId,
        "jurusan": jurusan,
    };
}
