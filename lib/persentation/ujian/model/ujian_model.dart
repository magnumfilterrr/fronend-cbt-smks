

class UjianModel {
  final int id;
  final String judul;
  final DateTime tanggal;
  final int duration;
  final String? mapel;    // Tambahkan mata pelajaran
  final String? kelas;    // Tambahkan kelas
  final bool isActive; 

  UjianModel({
    required this.id,
    required this.judul,
    required this.tanggal,
    required this.duration,
    this.mapel,
    this.kelas,
    required this.isActive,
  });


}
