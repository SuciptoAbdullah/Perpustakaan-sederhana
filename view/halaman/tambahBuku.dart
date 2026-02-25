import '../../controller/bukuController.dart';
import '../perintah.dart';
import '../../model/buku.dart';

import 'dart:io';

class TambahBuku extends Perintah {
  
  String namaPerintah = "Tambah buku";

  String getInput([String msg = "masukan input : "]){
    stdout.write(msg);
    String input = stdin.readLineSync()!;
    return input;
  }

  bool stokValidatingCheck(int stok){
    if(stok < 2){
      print("Stok yang dimasukan harus minimal 2");
      return false;
    }
    return true;
  }

  @override
  void get(){
    bool complete = false;

    while(!complete){
      String judul = getInput("Masukan judul buku : ");

      if( Bukucontroller.isJudulAleadyExist(judul) ){
        int stok = int.parse(getInput("Masukan Stok buku : "));
        
        Buku? buku = Bukucontroller.getByJudul(judul);
        Bukucontroller.addStok(buku!, stok);
        
        print("Buku ${buku.judul} terbitan ${buku.penerbit} telah berhasil diperbarui");
        
        complete = true;
        break;
      }
      
      String penerbit= getInput("Masukan penerbit buku : ");
      int stok = int.parse(getInput("Masukan Stok buku : "));

      if(!stokValidatingCheck(stok)){
        continue;
      }

      Bukucontroller.createNewBuku(judul: judul, penerbit: penerbit, stok: stok);
      complete = true;
      print("Buku ${judul} terbitan ${penerbit} telah berhasil ditambahkan");

    }

  }
}