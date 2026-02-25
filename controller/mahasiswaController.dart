import '../model/mahasiswa.dart';

class MahasiswaController{
  
  static bool validatingCheck(String nim, String nama){
    if(nim.length != 7){
      print("jumlah digit nim tidak sama dengan 7");
      return false;
    }
    if( Mahasiswa.listNIM.contains(nim) ){
      print("nim sudah terdaftar");
      return false;
    }
    if( Mahasiswa.listNama.contains(nama) ){
      print("nama sudah terdaftar");
      return false;
    }
    return true;
  }

  static Mahasiswa createNewMahasiswa({required String nim, required String nama}){
    Mahasiswa newMahasiswa = new Mahasiswa(nim: nim, nama: nama);

    Mahasiswa.list.add(newMahasiswa);
    Mahasiswa.listMahasiswaByNim[nim] = newMahasiswa;
    Mahasiswa.listMahasiswaByNama[nama] = newMahasiswa;

    return newMahasiswa;
  }

  static Mahasiswa? getByNim(String nim){
    return Mahasiswa.listMahasiswaByNim[nim];
  }

}