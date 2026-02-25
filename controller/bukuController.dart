import '../model/buku.dart';

class Bukucontroller {

  static bool isJudulAleadyExist(String judul){
    if(Buku.listJudul.contains(judul)){
      return true;
    }
    return false;
  }

  static bool isStokEnaough(int? stok){
    return stok! > 2;
  }

  static Buku? createNewBuku({required String judul, required String penerbit, required int stok})
  {  
    if( isJudulAleadyExist(judul) ){
      Buku? oldBuku = getByJudul(judul);
      addStok(oldBuku!, stok);
    }

    if(!isStokEnaough(stok)){
      return null;
    }

    Buku newBuku = new Buku(
      judul: judul,
      penerbit: penerbit,
      stok: stok);
    
    Buku.lastId++;
    Buku.list.add(newBuku);
    Buku.listJudul.add(judul);
    Buku.listBukuByJudul[judul] = newBuku;

    return newBuku;
  }

  static void addStok(Buku buku, int stok){
    buku.stok = buku.stok + stok;
  }

  static Buku? getByJudul(String judul){
    return Buku.listBukuByJudul[judul];
  }

}