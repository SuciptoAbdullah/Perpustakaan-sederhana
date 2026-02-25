import '../../model/buku.dart';
import '../perintah.dart';
import '../../model/mahasiswa.dart';

class Lihatdaftarmahasiswa extends Perintah {
  
  String namaPerintah = "Lihat daftar mahasiswa";

  @override
  void get([bool boolArgument = false]){
    print("=====================================================");
    int index = 1;
    for(Mahasiswa mhs in Mahasiswa.list){
      print( "$index. ${mhs.nama} (${mhs.nim})");
      print("buku yang dipinjam ${mhs.listBukuDipinjam.length}: ");
      for(Buku buku in mhs.listBukuDipinjam){
        print("\t${buku.getId()}\t${buku.judul}");
      }
      index ++;
    }
  }
}