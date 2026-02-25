import '../../controller/mahasiswaController.dart';
import '../perintah.dart';
import 'dart:io';

class Tambahmahasiswa extends Perintah {
  
  String namaPerintah = "Tambah mahasiswa";

  String getInput([String msg = "masukan input : "]){
    stdout.write(msg);
    String input = stdin.readLineSync()!;
    return input;
  }

  @override
  void get(){
    bool complete = false;

    while(!complete){
      String nama = getInput("Masukan Nama Mahasiswa : ");
      String nim = getInput("Masukan kode NIM : ");

      if( !MahasiswaController.validatingCheck(nim, nama)){
        print("\n");
        continue;
      }

      MahasiswaController.createNewMahasiswa(nama: nama, nim: nim);
      complete = true;
      print("Mahasiswa ${nama} (${nim}) telah berhasil ditambahkan");

    }

  }
}