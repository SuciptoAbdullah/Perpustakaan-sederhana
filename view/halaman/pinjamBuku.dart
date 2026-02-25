import '../../controller/bukuController.dart';
import '../../controller/mahasiswaController.dart';
import '../../controller/pinjamController.dart';
import '../../model/mahasiswa.dart';
import '../perintah.dart';
import '../../model/buku.dart';

import 'dart:io';

class PinjamBuku extends Perintah {
  
  String namaPerintah = "Pinjam buku";

  String getInput([String msg = "masukan input : "]){
    stdout.write(msg);
    String input = stdin.readLineSync()!;
    return input;
  }

  bool checkMahasiswa(String nim){
    if(nim.length > 7 || nim.length < 1){
      print("NIM tidak valid");
      return false;
    }
    if( !Mahasiswa.listNIM.contains(nim) ){
      print("mahasiswa tidak ditemukan");
      return false;
    }
    return true;
  }

  @override
  void get(){
    String judulBuku = getInput("Masukan Judul Buku : ");
    Buku? buku = Bukucontroller.getByJudul(judulBuku);
    int? stokBuku = buku?.getStok();

    if( !Bukucontroller.isStokEnaough( stokBuku! ) ){
      print("gagal meminjam buku");
      return;
    }

    String nim = getInput("Masukan nim mahasiswa : ");
    if(!checkMahasiswa(nim)){
      return;
    }

   Mahasiswa? mahasiswa = MahasiswaController.getByNim(nim);

   Pinjamcontroller.createNewPinjam(mahasiswa!, buku!);
   print("sesi peminjaman selesai");

  }
}