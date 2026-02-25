import '../perintah.dart';
import '../../main.dart';

class Exit extends Perintah {
  
  String namaPerintah = "exit";

  @override
  void get() {
    run = false;
    print("Selamat tinggal");
  }
}