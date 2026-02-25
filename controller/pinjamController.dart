import '../model/buku.dart';
import '../model/mahasiswa.dart';

class Pinjamcontroller {

  static void createNewPinjam(Mahasiswa mahasiswa, Buku buku){
    mahasiswa.listBukuDipinjam.add(buku);
    buku.dipinjam();
  }
}