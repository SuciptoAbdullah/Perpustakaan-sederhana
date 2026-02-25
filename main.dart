import 'view/perintah.dart';

import 'view/mainmenu.dart';
import 'view/halaman/lihatDaftarMahasiswa.dart';
import 'view/halaman/lihatDaftarBuku.dart';
import 'view/halaman/tambahMahasiswa.dart';
import 'view/halaman/tambahBuku.dart';
import 'view/halaman/pinjamBuku.dart';
import 'view/halaman/exit.dart';

bool run = true;

void main(){
  List<Perintah> listPerintah = [
      Lihatdaftarmahasiswa(),
      LihatDaftarBuku(),
      Tambahmahasiswa(),
      TambahBuku(),
      PinjamBuku(),
      Exit(),
    ];

  MainMenu mainMenu = MainMenu(listPerintah: listPerintah);

  while(run){
    mainMenu.get();
    listPerintah[mainMenu.getIndexPerintah()].get();
  }


}