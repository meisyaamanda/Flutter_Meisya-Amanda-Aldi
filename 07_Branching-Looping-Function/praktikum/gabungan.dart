import 'dart:io';

void nilai() {
  var nilai = 80;

  if (nilai > 70) {
    print('Nilai Anda A');
  } else if (nilai > 40) {
    print('Nilai Anda B');
  } else if (nilai > 0) {
    print('Nilai Anda C');
  } else {
    print('');
  }
}

void faktorial() {
  Future.delayed(Duration(seconds: 3));
  double faktorial = 1;
  print("Masukkan Angka : ");
  double n = double.parse(stdin.readLineSync()!);
  for (int i = 1; i <= n; i++) {
    faktorial *= i;
  }
  print("Hasil faktorial dari " +
      n.toString() +
      " adalah " +
      faktorial.toString());
}

void main() {
  nilai();
  faktorial();
}
