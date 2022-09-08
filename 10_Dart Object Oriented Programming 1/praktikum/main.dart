import 'hewan.dart';
import 'mobil.dart';

void main() {
  var kucing = new Hewan();
  kucing.nama = 'Kucing';
  kucing.berat = 30;

  var harimau = new Hewan();
  harimau.nama = 'Harimau';
  harimau.berat = 90;

  var kambing = new Hewan();
  kambing.nama = 'Kambing';
  kambing.berat = 30;

  var truk = mobil();
  truk.kapasitas = 130;
  truk.tambahMuatan(kucing);
  truk.tambahMuatan(harimau);
  truk.tambahMuatan(kambing);

  print('Hewan yang ada di dalam mobil : ');
  var nomer = 1;
  for (var i in truk.muatan) {
    print('$nomer. ${i.nama}');
    nomer++;
  }

  // Task 2
  print(
      'Total Muatan yang terdapat pada Mobil adalah : ${truk.totalMuatan()}');
}
