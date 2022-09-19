import 'hewan.dart';

class mobil {
  var kapasitas = 0;
  List<Hewan> muatan = [];

  void tambahMuatan (Hewan tambah){
    if (kapasitas >= tambah.berat) {
      muatan.add(tambah);
      kapasitas -= tambah.berat;
      print('${tambah.nama} berhasil ditambahkan');
    } else {
      print('${tambah.nama} tidak memenuhi kapasitas');
    }
  }

// task 2
  int totalMuatan(){
    var hasil = 0;
    for (var i in muatan){
      hasil += i.berat;
    }
    return hasil;
  }
}
