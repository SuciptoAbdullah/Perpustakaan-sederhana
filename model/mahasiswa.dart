import 'buku.dart';

class Mahasiswa {

  static Set<Mahasiswa> list = {};
  static Set<String> listNIM = {"00000000"};
  static Set<String> listNama = {"Bahlil"};

  static Map<String, Mahasiswa> listMahasiswaByNim = {};
  static Map<String, Mahasiswa> listMahasiswaByNama = {};

  String? nim;
  String? nama;
  List<Buku> listBukuDipinjam = [];

  Mahasiswa({String nim="000000", String nama="Bahlil"}){
    this.nama = nama;
    this.nim = nim;
    listNIM.add(nim);
    listNama.add(nama);

    print(this.nama);
  }

}