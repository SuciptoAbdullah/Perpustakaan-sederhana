import 'dart:io';
import 'perintah.dart';

class MainMenu extends Perintah{

  int? indexPerintah;
  List<Perintah>? listPerintah;

  int getInput(){
    stdout.write("Masukan Input : ");
    int input = int.parse(stdin.readLineSync()!);
    return input-1;
  }

  void printMenu(){
    int index = 1;
    for(Perintah perintah in this.listPerintah!){
      print("${index}.\t${perintah.namaPerintah}");
      index++;
    }
  }

  int getIndexPerintah() => this.indexPerintah!;

  MainMenu({required this.listPerintah});

  @override
  void get(){
    print("=".padRight(100, "="));
    this.printMenu();
    int input = getInput();
    this.indexPerintah = input;
  }
}