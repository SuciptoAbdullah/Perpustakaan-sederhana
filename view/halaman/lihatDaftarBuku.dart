import '../perintah.dart';
import '../../model/buku.dart';

class LihatDaftarBuku extends Perintah {
  
  String namaPerintah = "Lihat daftar buku";

  @override
  void get([bool boolArgument = false]){
    print("=====================================================");
    print(" id\t| judul\t\t\t|penerbit\t|stok");
    print("=====================================================");
    for(Buku buku in Buku.list){
      String judulTab = "\t";
      String penerbitTab = "\t";
      
      if(buku.judul!.length < 14){
        judulTab = "\t\t";
      }
      if(buku.judul!.length < 14){
        penerbitTab = "\t\t";
      }

      print( " ${buku.getId().toString()}\t| ${buku.judul}${judulTab}| ${buku.penerbit}${penerbitTab}| ${buku.stok.toString()}");
    }
  }
}