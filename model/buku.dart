class Buku {

  static int lastId = 1;
  static Set<Buku> list = {};
  static Map<String, Buku> listBukuByJudul = {};
  static Set<String> listJudul = {};

  int? _id;
  String? judul;
  String? penerbit;
  int stok = 0;

  Buku({String judul = "unknown", String penerbit = "unknown", int stok = 0}){
    this._id = lastId;
    this.judul = judul;
    this.penerbit = penerbit;
    this.stok = stok;
  }

  int getId() => this._id!;

  int? getStok() => this.stok;

  void dipinjam(){
    this.stok = this.stok - 1;
  }

}